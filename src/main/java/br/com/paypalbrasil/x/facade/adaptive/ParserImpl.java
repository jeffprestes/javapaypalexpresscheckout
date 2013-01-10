/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.facade.adaptive;

import br.com.paypalbrasil.x.domain.CodigoACK;
import br.com.paypalbrasil.x.domain.CabecalhoResposta;
import br.com.paypalbrasil.x.domain.adaptive.RespostaPagamento;
import br.com.paypalbrasil.x.domain.adaptive.StatusExecucaoPagamemto;
import br.com.paypalbrasil.x.interfaces.Parser;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import org.apache.log4j.Logger;

/**
 * Realiza o parse da resposta do metodo Pay do Adaptive Payments
 *
 * @author jprestes
 */
public class ParserImpl implements Parser {

    private static ParserImpl instance = null;
    private static Logger logger = Logger.getLogger(ParserImpl.class);

    protected ParserImpl() {
    }

    public static ParserImpl getInstance() {
        if (instance == null) {
            instance = new ParserImpl();
        }
        return instance;
    }

    @Override
    public RespostaPagamento parse(String respostaBruta) {

        CabecalhoResposta envelope = null;
        String chavePgto = null;
        StatusExecucaoPagamemto status = null;
        RespostaPagamento resp = null;

        String pairs[] = respostaBruta.split("&");

        for (String current : pairs) {

            String[] pair = current.split("=");

            if (pair[0] != null && pair[1] != null) {
                String chave = pair[0];
                String valor = pair[1];

                if (chave.startsWith("responseEnvelope")) {
                    if (envelope == null) {
                        envelope = new CabecalhoResposta();
                    }
                    switch (chave) {
                        case "responseEnvelope.ack":
                            switch (valor) {
                                case "Success":
                                    envelope.setAck(CodigoACK.Success);
                                    break;
                                case "Failure":
                                    envelope.setAck(CodigoACK.Failure);
                                    break;
                                case "Warning":
                                    envelope.setAck(CodigoACK.Warning);
                                    break;
                                case "SuccessWithWarning":
                                    envelope.setAck(CodigoACK.SuccessWithWarning);
                                    break;
                                case "FailureWithWarning":
                                    envelope.setAck(CodigoACK.FailureWithWarning);
                                    break;
                                default:
                                    logger.error("Codigo de retorno desconhecido: " + valor + ". Verificar com a equipe MTS do PayPal (www.paypal.com/mts)");
                                    envelope.setAck(CodigoACK.Failure);
                            }
                            break;

                        case "responseEnvelope.correlationId":
                            envelope.setIdCorrelacao(valor);
                            break;

                        case "responseEnvelope.build":
                            envelope.setBuild(valor);
                            break;

                        case "responseEnvelope.timestamp":
                            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssX");
                            try {
                                envelope.setTimestamp(URLDecoder.decode(valor, "UTF-8"));
                            } catch (UnsupportedEncodingException ex) {
                                logger.error("Erro ao fazer o decode da data do timestamp: " + valor, ex);
                            }
                            break;
                    }
                }

                if ("payKey".equalsIgnoreCase(chave)) {
                    chavePgto = valor;
                }

                if ("paymentExecStatus".equalsIgnoreCase(chave)) {
                    switch (valor) {
                        case "CREATED":
                            status = StatusExecucaoPagamemto.CREATED;
                            break;
                        case "COMPLETED":
                            status = StatusExecucaoPagamemto.COMPLETED;
                            break;
                        case "INCOMPLETE":
                            status = StatusExecucaoPagamemto.CREATED;
                            break;
                        case "ERROR":
                            status = StatusExecucaoPagamemto.ERROR;
                            break;
                        case "REVERSALERROR":
                            status = StatusExecucaoPagamemto.REVERSALERROR;
                            break;
                        case "PROCESSING":
                            status = StatusExecucaoPagamemto.PROCESSING;
                            break;
                        case "PENDING":
                            status = StatusExecucaoPagamemto.PENDING;
                            break;
                    }
                }
            }
        }

        if (status != null && chavePgto != null && envelope != null) {
            resp = new RespostaPagamento(chavePgto, status, envelope);
        }

        return resp;
    }
}
