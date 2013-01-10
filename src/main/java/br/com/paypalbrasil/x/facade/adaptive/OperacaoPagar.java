/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.facade.adaptive;

import br.com.paypalbrasil.x.domain.adaptive.Recebedor;
import br.com.paypalbrasil.x.domain.adaptive.ParametroRequisicao;
import br.com.paypalbrasil.x.domain.adaptive.ResponsavelPagamentoTaxa;
import br.com.paypalbrasil.x.domain.Credenciais;
import br.com.paypalbrasil.x.domain.adaptive.RespostaPagamento;
import br.com.paypalbrasil.x.util.Util;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URLEncoder;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;
import org.apache.log4j.Logger;

/**
 *
 * @author jeffprestes
 */
public class OperacaoPagar {

    private Credenciais credenciais;
    private ParametroRequisicao pra;
    private List<Recebedor> recebedores;
    private static Logger logger = Logger.getLogger(OperacaoPagar.class);
    private ResponsavelPagamentoTaxa respPgtoTaxa;

    /**
     * Operacao para execucao da acao de pagamento do Adaptive Payments da
     * PayPal
     *
     * @param credenciais Credenciais da plataforma
     * @param pra Parametros da Requisição (valor, produto, etc)
     * @param recebedores Recebedores da transação quando há pararalles ou
     * splitpayments
     * @param respPgtoTaxa No caso de parallels ou splitpayment define quem é o
     * responsável pelo pagamento da taxa
     */
    public OperacaoPagar(Credenciais credenciais, ParametroRequisicao pra, List<Recebedor> recebedores, ResponsavelPagamentoTaxa respPgtoTaxa) {
        this.setCredenciais(credenciais);
        this.setParametroRequisicaoAdaptive(pra);
        this.setRecebedores(recebedores);
        this.setResponsavelPagamentoTaxa(respPgtoTaxa);
    }

    public RespostaPagamento executar() {

        ParametroRequisicao pra = this.getParametroRequisicaoAdaptive();
        RespostaPagamento resp = null;

        StringBuilder sb = new StringBuilder();
        sb.append("https://");
        sb.append(pra.getServidor());
        sb.append("/AdaptivePayments/");
        sb.append("Pay");

        try {

            logger.debug("URL de chamada: " + sb.toString());

            HttpsURLConnection conn = Util.getConexaoHttps(sb.toString());

            sb = null;

            conn.setRequestProperty("X-PAYPAL-SECURITY-USERID", credenciais.getUsuario());
            conn.setRequestProperty("X-PAYPAL-SECURITY-PASSWORD", credenciais.getSenha());
            conn.setRequestProperty("X-PAYPAL-SECURITY-SIGNATURE", credenciais.getAssinatura());
            conn.setRequestProperty("X-PAYPAL-APPLICATION-ID", credenciais.getAppId());
            conn.setRequestProperty("X-PAYPAL-REQUEST-DATA-FORMAT", pra.getFormatoDadosRequisicao().name());
            conn.setRequestProperty("X-PAYPAL-RESPONSE-DATA-FORMAT", pra.getFormatoDadosResposta().name());

            logger.debug("Credenciais");
            logger.debug("X-PAYPAL-SECURITY-USERID: " + conn.getRequestProperty("X-PAYPAL-SECURITY-USERID"));
            logger.debug("X-PAYPAL-SECURITY-PASSWORD: " + conn.getRequestProperty("X-PAYPAL-SECURITY-PASSWORD"));
            logger.debug("X-PAYPAL-SECURITY-SIGNATURE: " + conn.getRequestProperty("X-PAYPAL-SECURITY-SIGNATURE"));
            logger.debug("X-PAYPAL-APPLICATION-ID: " + conn.getRequestProperty("X-PAYPAL-APPLICATION-ID"));
            logger.debug("X-PAYPAL-REQUEST-DATA-FORMAT: " + conn.getRequestProperty("X-PAYPAL-REQUEST-DATA-FORMAT"));
            logger.debug("X-PAYPAL-RESPONSE-DATA-FORMAT: " + conn.getRequestProperty("X-PAYPAL-RESPONSE-DATA-FORMAT"));

            sb = new StringBuilder();

            sb.append("actionType");
            sb.append("=");
            sb.append(URLEncoder.encode(pra.getTipoAcaoPagamento().name(), "UTF-8"));
            sb.append("&");

            sb.append("cancelUrl");
            sb.append("=");
            sb.append(URLEncoder.encode(pra.getUrlCancelamento(), "UTF-8"));
            sb.append("&");

            sb.append("clientDetails.ipAddress");
            sb.append("=");
            sb.append(URLEncoder.encode(pra.getDetalheCliente().getEnderecoIp(), "UTF-8"));
            sb.append("&");

            sb.append("clientDetails.applicationId");
            sb.append("=");
            sb.append(URLEncoder.encode(pra.getDetalheCliente().getIdAplicacao(), "UTF-8"));
            sb.append("&");

            sb.append("currencyCode");
            sb.append("=");
            sb.append(URLEncoder.encode(pra.getCodigoMoeda(), "UTF-8"));
            sb.append("&");

            if (pra.getMemo() != null && pra.getMemo().trim().length() > 0) {
                sb.append("memo");
                sb.append("=");
                sb.append(URLEncoder.encode(pra.getMemo(), "UTF-8"));
                sb.append("&");
            }

            sb.append("returnUrl");
            sb.append("=");
            sb.append(URLEncoder.encode(pra.getUrlRetorno(), "UTF-8"));
            sb.append("&");

            int i = 0;
            for (Recebedor r : this.getRecebedores()) {
                sb.append("receiverList.receiver(" + i + ").amount");
                sb.append("=");
                sb.append(URLEncoder.encode(Double.toString(r.getValor()), "UTF-8"));
                sb.append("&");

                sb.append("receiverList.receiver(" + i + ").email");
                sb.append("=");
                sb.append(URLEncoder.encode(r.getEmail(), "UTF-8"));
                sb.append("&");

                sb.append("receiverList.receiver(" + i + ").primary");
                sb.append("=");
                sb.append(URLEncoder.encode(Boolean.toString(r.isPrimario()), "UTF-8"));
                sb.append("&");

                i++;
            }

            if (i > 0) {
                sb.append("feesPayer");
                sb.append("=");
                sb.append(URLEncoder.encode(this.getResponsavelPagamentoTaxa().name(), "UTF-8"));
                sb.append("&");
            }

            sb.append("requestEnvelope.errorLanguage");
            sb.append("=");
            sb.append(URLEncoder.encode(pra.getLinguaMensagemErro(), "UTF-8"));

            OutputStreamWriter writer = new OutputStreamWriter(conn.getOutputStream());

            logger.debug("Chamada: " + sb.toString());

            writer.write(sb.toString());
            writer.flush();
            writer.close();

            InputStreamReader in = new InputStreamReader(conn.getInputStream());

            sb = new StringBuilder();

            BufferedReader reader = new BufferedReader(in);

            String data;

            logger.debug("Retorno: ");
            while ((data = reader.readLine()) != null) {
                logger.debug(data);
                sb.append(data);
            }

            data = sb.toString();

            ParserImpl parser = ParserImpl.getInstance();

            resp = parser.parse(data);

            logger.info("Retorno: " + resp.toString());

            in.close();

        } catch (IOException e) {
            logger.error("Erro ao conectar ao servidor", e);
        }

        //return new Resposta(null, CodigoACK.Sucess, null, StatusExecucaoPagamemto.ERROR);
        return resp;
    }

    public Credenciais getCredenciais() {
        return credenciais;
    }

    public void setCredenciais(Credenciais credenciais) {
        this.credenciais = credenciais;
    }

    public ParametroRequisicao getParametroRequisicaoAdaptive() {
        return pra;
    }

    public void setParametroRequisicaoAdaptive(ParametroRequisicao pra) {
        this.pra = pra;
    }

    public List<Recebedor> getRecebedores() {
        return recebedores;
    }

    public void setRecebedores(List<Recebedor> recebedores) {
        this.recebedores = recebedores;
    }

    public ResponsavelPagamentoTaxa getResponsavelPagamentoTaxa() {
        return respPgtoTaxa;
    }

    public void setResponsavelPagamentoTaxa(ResponsavelPagamentoTaxa respPgtoTaxa) {
        this.respPgtoTaxa = respPgtoTaxa;
    }

    @Override
    public String toString() {
        return "OperacaoPagar{" + "credenciais=" + credenciais.toString() + ", pra=" + pra.toString() + ", recebedores=" + recebedores.toString() + '}';
    }
}
