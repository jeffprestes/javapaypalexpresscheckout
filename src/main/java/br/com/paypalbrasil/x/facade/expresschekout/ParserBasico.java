/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.facade.expresschekout;

import br.com.paypalbrasil.x.domain.CabecalhoResposta;
import br.com.paypalbrasil.x.domain.CodigoACK;
import br.com.paypalbrasil.x.domain.Resposta;
import br.com.paypalbrasil.x.domain.expresscheckout.ErroResposta;
import br.com.paypalbrasil.x.domain.expresscheckout.SetExpressCheckoutResposta;
import br.com.paypalbrasil.x.interfaces.Parser;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import org.apache.log4j.Logger;

/**
 * Realiza o 'parseamento' da resposta do SetExpressCheckout
 * @author jprestes
 */
public class ParserBasico implements Parser     {

    private static ParserBasico instance = null;
    private static Logger logger = Logger.getLogger(ParserBasico.class);
    
    protected ParserBasico()    {       }
    
    public static ParserBasico getInstance()  {
        if (instance == null)   {
            instance = new ParserBasico();
        }
        return instance;
    }
    
    protected CabecalhoResposta parseCabecalho(String[] chavesValores)     {
        
        CabecalhoResposta envelope = new CabecalhoResposta();      
    
        if (chavesValores.length >3 )   {
            
            for (String current : chavesValores) {

                String[] pair = current.split("=");

                if (pair[0]!=null && pair[1]!=null)  {
                    String chave = pair[0];
                    String valor = pair[1];

                    logger.info(chave + "=" + valor);
                    
                    switch (chave)  {
                        case "ACK":
                            switch (valor)   {
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
                                case "PartialSuccess":
                                    envelope.setAck(CodigoACK.PartialSuccess);
                                default:
                                    logger.error("Codigo de retorno desconhecido: " + valor + ". Verificar com a equipe MTS do PayPal (www.paypal.com/mts)");
                                    envelope.setAck(CodigoACK.Failure);
                            }
                            break;

                        case "CORRELATIONID"   :
                            envelope.setIdCorrelacao(valor);
                            break;

                        case "BUILD"    :
                            envelope.setBuild(valor);
                            break;

                        case "TIMESTAMP"   :
                            try     {
                                envelope.setTimestamp(URLDecoder.decode(valor, "UTF-8"));
                            } catch (UnsupportedEncodingException ex)   {
                                logger.error("Erro ao fazer o decode da data do timestamp: " + valor, ex);
                            } 
                            break;
                    }
                }
            }
        }
        
        return envelope;
    }
    
    /**
     * Processa e armazena um retorno de erro a chamada de um webservice do Express Checkout
     * @param chavesValores
     * @return Objeto de erro
     */
    protected ErroResposta parseErro(String[] chavesValores)     {
    
        ErroResposta erro = new ErroResposta();
        
        if (chavesValores.length >1 )   {
            
            for (String current : chavesValores) {

                String[] pair = current.split("=");

                if (pair[0]!=null && pair[1]!=null)  {
                    String chave = pair[0];
                    String valor = "";
                    
                    try     {
                        valor = URLDecoder.decode(pair[1], "UTF-8");
                        
                        
                        
                    } catch (UnsupportedEncodingException ex)   {
                        logger.warn("Nao foi possivel fazer o parse: " + ex.getLocalizedMessage(), ex);
                        valor = pair[1];
                    }
        
                    switch (chave)  {
                        case "VERSION"  :
                            erro.setVersion(valor);
                            logger.info(chave + ": " + valor);
                            break;
                        
                        case "L_ERRORCODE0"     :
                            erro.setCodigoErro(Integer.parseInt(valor));
                            logger.info(chave + ": " + valor);
                            break;
                            
                        case "L_SHORTMESSAGE0"  :
                            erro.setMensagemCurta(valor);
                            logger.info(chave + ": " + valor);
                            break;
                            
                        case "L_LONGMESSAGE0"   :
                            erro.setMensagemLonga(valor);
                            logger.info(chave + ": " + valor);
                            break;
                            
                        case "L_SEVERITYCODE0"  :
                            erro.setCodigoSeveridade(valor);
                            logger.info(chave + ": " + valor);
                            break;
                    }
                }
            }
        }
        
        return erro;
    }
    
    @Override
    public Resposta parse(String respostaBruta) {
        
        if (respostaBruta==null || !respostaBruta.contains("&"))    {
            return null;
        }
        
        String pairs[] = respostaBruta.split("&");

        CabecalhoResposta cabecalho = this.parseCabecalho(pairs);
        Resposta resp = null;
        
        if (cabecalho!=null)    {
            resp = new Resposta(cabecalho);
        }
        
        return resp;
    }
}
