/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.facade.expresschekout;

import br.com.paypalbrasil.x.domain.Credenciais;
import br.com.paypalbrasil.x.domain.expresscheckout.GetExpressCheckoutDetailsResposta;
import br.com.paypalbrasil.x.domain.expresscheckout.SetExpressCheckoutResposta;
import br.com.paypalbrasil.x.util.Util;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.apache.log4j.Logger;

/**
 * Estrutura os dados e realiza as chamadas aos metodos do Express Checkout para
 * pagamentos simples. Exemplo: Um vendedor unico para varios itens fisicos.
 *
 * @author jprestes
 */
public class PagamentoSimples {

    private Logger logger = Logger.getLogger(this.getClass());
    private Credenciais credenciais;

    /**
     * Permite realizar as operacoes de SetExpressCheckout e DoExpressCheckout
     *
     * @param cr Credenciais do merchant
     */
    public PagamentoSimples(Credenciais cr) {
        this.setCredenciais(cr);
    }

    /**
     * Permite realizar as operacoes de GetExpressCheckoutDetails e
     * GetTransactionDetails
     */
    public PagamentoSimples() {
    }

    /**
     * Executa o metodo SetExpressCheckout
     *
     * @param parametros Parametros recebido do formulario ou do sistema do
     * cliente
     */
    public SetExpressCheckoutResposta setExpressCheckout(Map<String, String[]> parametros) throws IllegalStateException {

        StringBuilder param = new StringBuilder();
        SetExpressCheckoutResposta resp = null;

        if (this.getCredenciais() == null) {
            throw new IllegalStateException("As credencais do merchant nao foram informadas.");
        }

        try {
            HttpsURLConnection conn = Util.getConexaoHttps((String) parametros.get("NAOENVIAR_ENDPOINT")[0]);

            logger.info("Parametros da chamada:");
            for (Map.Entry<String, String[]> item : parametros.entrySet()) {
                if (podeEnviarParametro(item.getKey(), item.getValue()[0])) {
                    param.append(item.getKey() + "=" + URLEncoder.encode(item.getValue()[0], "UTF-8") + "&");
                    logger.info("     " + item.getKey() + ": " + item.getValue()[0] + "&");
                }
            }

            OutputStreamWriter writer = new OutputStreamWriter(conn.getOutputStream());
            //logger.info("Chamada: " + param.toString());

            writer.write(param.toString());
            writer.flush();
            writer.close();

            InputStreamReader in = new InputStreamReader(conn.getInputStream());

            param = null;
            param = new StringBuilder();

            BufferedReader reader = new BufferedReader(in);

            String data;

            logger.info("Retorno da chamada: ");
            while ((data = reader.readLine()) != null) {
                param.append(data);
            }

            data = param.toString();

            SetExpressCheckoutParser parser = SetExpressCheckoutParser.getInstance();
            resp = parser.parse(data);

            //logger.debug("Resposta do SetExpressCheckout: " + resp.toString());



        } catch (IOException ex) {
            logger.fatal("Erro ao executar SetExpressCheckout: " + ex.getLocalizedMessage(), ex);
        }

        return resp;
    }

    public GetExpressCheckoutDetailsResposta getExpressCheckoutDetails(Map<String, String[]> parametros) throws IllegalStateException {

        StringBuilder param = new StringBuilder();
        GetExpressCheckoutDetailsResposta resp = null;

        try {
            HttpsURLConnection conn = Util.getConexaoHttps((String) parametros.get("NAOENVIAR_ENDPOINT")[0]);

            logger.info("Parametros da chamada GetExpressCheckoutDetails:");
            for (Map.Entry<String, String[]> item : parametros.entrySet()) {
                if (podeEnviarParametro(item.getKey(), item.getValue()[0])) {
                    param.append(item.getKey() + "=" + URLEncoder.encode(item.getValue()[0], "UTF-8") + "&");
                    logger.info("     " + item.getKey() + ": " + item.getValue()[0] + "&");
                }
            }

            OutputStreamWriter writer = new OutputStreamWriter(conn.getOutputStream());
            logger.info("Chamada a: " + conn.getURL() + " com os parametros: " + param.toString());

            writer.write(param.toString());
            writer.flush();
            writer.close();

            InputStreamReader in = new InputStreamReader(conn.getInputStream());

            param = null;
            param = new StringBuilder();

            BufferedReader reader = new BufferedReader(in);

            String data;


            logger.info("Retorno da chamada: ");
            while ((data = reader.readLine()) != null) {
                param.append(data);
            }

            /*if (data.contains("TOKEN")) {
                param.append("==================================================");
            }*/
            
            data = param.toString();
            
            GetExpressCheckoutDetailsParser parser = GetExpressCheckoutDetailsParser.getInstance();
            resp = parser.parse(data);
            
            logger.info(data);



        } catch (IOException ex) {
            logger.fatal("Erro ao executar GetExpressCheckoutDetails: " + ex.getLocalizedMessage(), ex);
        }

        return resp;
    }

    public Credenciais getCredenciais() {
        return credenciais;
    }

    public void setCredenciais(Credenciais credenciais) {
        this.credenciais = credenciais;
    }

    /**
     * Verifica se o parametro deve ser enviado ao webservice da PayPal ou não
     *
     * @param chave
     * @param valor
     * @return A resposta se o parametro pode ou nao pode ser enviado.
     */
    private boolean podeEnviarParametro(String chave, String valor) {
        boolean retorno = false;

        if (chave != null) {
            if (!chave.startsWith("NAOENVIAR_")) {
                if (valor != null) {
                    if (valor.trim().length() > 0) {
                        retorno = true;
                    }
                }
            }

        }
        return retorno;
    }
}
