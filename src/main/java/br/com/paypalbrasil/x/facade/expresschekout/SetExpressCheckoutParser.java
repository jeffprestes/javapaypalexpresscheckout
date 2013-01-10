/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.facade.expresschekout;

import br.com.paypalbrasil.x.domain.CabecalhoResposta;
import br.com.paypalbrasil.x.domain.CodigoACK;
import br.com.paypalbrasil.x.domain.expresscheckout.ErroResposta;
import br.com.paypalbrasil.x.domain.expresscheckout.SetExpressCheckoutResposta;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import org.apache.log4j.Logger;

/**
 * Realiza o 'parseamento' da resposta do SetExpressCheckout
 *
 * @author jprestes
 */
public class SetExpressCheckoutParser extends ParserBasico {

    private static SetExpressCheckoutParser instance = null;
    private static Logger logger = Logger.getLogger(SetExpressCheckoutParser.class);

    protected SetExpressCheckoutParser() {
    }

    public static SetExpressCheckoutParser getInstance() {
        if (instance == null) {
            instance = new SetExpressCheckoutParser();
        }
        return instance;
    }

    @Override
    public SetExpressCheckoutResposta parse(String respostaBruta) {

        if (respostaBruta == null || !respostaBruta.contains("&")) {
            return null;
        }

        String pairs[] = respostaBruta.split("&");

        CabecalhoResposta cabecalho = this.parseCabecalho(pairs);
        SetExpressCheckoutResposta resp = new SetExpressCheckoutResposta(cabecalho);
        ErroResposta erroResp = null;

        for (String current : pairs) {

            String[] pair = current.split("=");

            try {
                if (pair[0] != null && pair[1] != null) {
                    String chave = pair[0];
                    String valor = URLDecoder.decode(pair[1], "UTF-8");

                    if (cabecalho.getAck() == CodigoACK.Failure) {
                        erroResp = this.parseErro(pairs);
                        resp.setErro(erroResp);
                        break;
                    }

                    logger.info(chave + "=" + valor);

                    if ("TOKEN".equalsIgnoreCase(chave)) {
                        resp.setToken(valor);
                    }

                    if ("VERSION".equals(chave)) {
                        resp.setVersao(valor);
                    }

                }
            } catch (UnsupportedEncodingException ex) {
                logger.error("Erro de parser: " + ex.getLocalizedMessage(), ex);
            }

        }

        return resp;
    }
}
