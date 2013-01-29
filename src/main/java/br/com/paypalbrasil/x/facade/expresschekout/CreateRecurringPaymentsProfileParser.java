/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.facade.expresschekout;

import br.com.paypalbrasil.x.domain.CabecalhoResposta;
import br.com.paypalbrasil.x.domain.CodigoACK;
import br.com.paypalbrasil.x.domain.expresscheckout.ErroResposta;
import br.com.paypalbrasil.x.domain.expresscheckout.CreateRecurringPaymentsProfileResposta;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import org.apache.log4j.Logger;
/**
 *
 * @author aalonso
 */
public class CreateRecurringPaymentsProfileParser extends ParserBasico {
    
    private static CreateRecurringPaymentsProfileParser instance = null;
    private static Logger logger = Logger.getLogger(CreateRecurringPaymentsProfileParser.class);

    protected CreateRecurringPaymentsProfileParser() {
    }

    public static CreateRecurringPaymentsProfileParser getInstance() {
        if (instance == null) {
            instance = new CreateRecurringPaymentsProfileParser();
        }
        return instance;
    }

    @Override
    public CreateRecurringPaymentsProfileResposta parse(String respostaBruta) {

        if (respostaBruta == null || !respostaBruta.contains("&")) {
            return null;
        }

        String pairs[] = respostaBruta.split("&");

        CabecalhoResposta cabecalho = this.parseCabecalho(pairs);
        CreateRecurringPaymentsProfileResposta resp = new CreateRecurringPaymentsProfileResposta(cabecalho);
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

                    if ("PROFILEID".equalsIgnoreCase(chave)) {
                        resp.setProfileId(valor);
                    }
                    
                    if ("PROFILESTATUS".equalsIgnoreCase(chave)) {
                        resp.setProfileStatus(valor);
                    }
                    
                    if ("TIMESTAMP".equalsIgnoreCase(chave)) {
                        resp.setTimestamp(valor);
                    }
                    
                    if ("CORRELATIONID".equalsIgnoreCase(chave)) {
                        resp.setCorrelationId(valor);
                    }
                    
                    if ("ACK".equalsIgnoreCase(chave)) {
                        resp.setAck(valor);
                    }
                    
                    if ("VERSION".equals(chave)) {
                        resp.setVersao(valor);
                    }
                    
                    if ("BUILD".equals(chave)) {
                        resp.setBuild(valor);
                    }

                }
            } catch (UnsupportedEncodingException ex) {
                logger.error("Erro de parser: " + ex.getLocalizedMessage(), ex);
            }

        }

        return resp;
    }
    
}
