/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.facade.expresschekout;

import br.com.paypalbrasil.x.domain.CabecalhoResposta;
import br.com.paypalbrasil.x.domain.CategoriaItem;
import br.com.paypalbrasil.x.domain.CodigoACK;
import br.com.paypalbrasil.x.domain.StatusPagador;
import br.com.paypalbrasil.x.domain.expresscheckout.*;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import org.apache.log4j.Logger;

/**
 * Realiza o 'parseamento' da resposta do SetExpressCheckout
 * @author jprestes
 */
public class GetExpressCheckoutDetailsParser extends ParserBasico     {

    private static GetExpressCheckoutDetailsParser instance = null;
    private static Logger logger = Logger.getLogger(GetExpressCheckoutDetailsParser.class);
    
    protected GetExpressCheckoutDetailsParser()    {       }
    
    public static GetExpressCheckoutDetailsParser getInstance()  {
        if (instance == null)   {
            instance = new GetExpressCheckoutDetailsParser();
        }
        return instance;
    }
    
    @Override
    public GetExpressCheckoutDetailsResposta parse(String respostaBruta) {
        
        if (respostaBruta==null || !respostaBruta.contains("&"))    {
            return null;
        }
        
        String pairs[] = respostaBruta.split("&");

        CabecalhoResposta cabecalho = this.parseCabecalho(pairs);
        GetExpressCheckoutDetailsResposta resp = new GetExpressCheckoutDetailsResposta(cabecalho);
        ErroResposta erroResp = null;
        Comprador comprador = null;
        DadosEntrega dadosEntrega = null;
        DadosPagamento dPagto = null;
        
        for (String current : pairs) {
            
            String[] pair = current.split("=");
            
            try     {
                if (pair[0]!=null && pair[1]!=null)  {
                    String chave = pair[0];
                    String valor = URLDecoder.decode(pair[1], "UTF-8");

                    if (cabecalho.getAck()==CodigoACK.Failure)  {
                        erroResp = this.parseErro(pairs);
                        resp.setErro(erroResp);
                        break;
                    }
                     
                    logger.info(chave + "=" + valor);
                    
                    List<ItemVenda> itensVenda = new ArrayList<ItemVenda>();
                    resp.setItens(itensVenda);
                    
                    if ("TOKEN".equalsIgnoreCase(chave))   {
                        resp.setToken(valor);
                    }
                    
                    if ("VERSION".equalsIgnoreCase(chave))    {
                        resp.setVersao(valor);
                    }
                    
                    if ("CHECKOUTSTATUS".equals(chave))      {
                    
                        if ("PaymentActionNotInitiated".equals(valor))      {
                            resp.setStatusCheckout(CheckoutStatus.PaymentActionNotInitiated);
                        }
                        
                        if ("PaymentActionFailed".equals(valor))      {
                            resp.setStatusCheckout(CheckoutStatus.PaymentActionFailed);
                        }
                        
                        if ("PaymentActionInProgress".equals(valor))      {
                            resp.setStatusCheckout(CheckoutStatus.PaymentActionFailed);
                        }
                        
                        if ("PaymentCompleted".equals(valor))      {
                            resp.setStatusCheckout(CheckoutStatus.PaymentCompleted);
                        }
                        
                    }
                    
                    if ("INVNUM".equalsIgnoreCase(chave))      {
                        resp.setNroPedido(valor);
                    }
                    
                    if ("TIMESTAMP".equalsIgnoreCase(chave))      {
                        resp.setTimestamp(valor);
                    }
                    
                    if ("ACK".equalsIgnoreCase(chave))      {
                        resp.setAck(valor);
                    }
                    
                    if ("CORRELATIONID".equalsIgnoreCase(chave))      {
                        resp.setCorrelationId(valor);
                    }
                    
                    if ("PHONENUM".equals(chave))      {
                        resp.setTelefone(valor);
                    }
                    
                    if ("NOTE".equals(chave))      {
                        resp.setNota(valor);
                    }
                    
                    if ("GIFTMESSAGE".equals(chave))      {
                        resp.setMensagemPresente(valor);
                    }
                    
                    if ("SURVEYQUESTION".equals(chave))      {
                        resp.setPerguntaOpiniao(valor);
                    }
                    
                    if ("SURVEYCHOICESELECTED".equals(chave))      {
                        resp.setRespostaPerguntaOpiniao(valor);
                    }
                    
                    if ("BUYERMARKETINGMAIL".equals(chave))      {
                        if (comprador == null)  {
                            comprador = new Comprador();
                            resp.setComprador(comprador);
                        }
                        resp.getComprador().setEmailCompradorMarketing(valor);
                    }
                    
                    if ("EMAIL".equals(chave))      {
                        if (comprador == null)  {
                            comprador = new Comprador();
                            resp.setComprador(comprador);
                        }
                        resp.getComprador().setEmailComprador(valor);
                    }
                    
                    if ("PAYERID".equals(chave))      {
                        if (comprador == null)  {
                            comprador = new Comprador();
                            resp.setComprador(comprador);
                        }
                        resp.getComprador().setPayerId(valor);
                    }
                    
                    if ("PAYERSTATUS".equals(chave))      {
                        if (comprador == null)  {
                            comprador = new Comprador();
                            resp.setComprador(comprador);
                        }
                        if ("unverified".equals(StatusPagador.unverified.name()))     {
                            resp.getComprador().setStatusPagador(StatusPagador.unverified);
                        } else if ("verified".equals(StatusPagador.verified.name()))    {
                            resp.getComprador().setStatusPagador(StatusPagador.verified);
                        }
                        
                    }
                    
                    if ("COUNTRYCODE".equals(chave))      {
                        if (comprador == null)  {
                            comprador = new Comprador();
                            resp.setComprador(comprador);
                        }
                        resp.getComprador().setPaisComprador(valor);
                    }
                    
                    if ("BUSINESS".equals(chave))      {
                       if (comprador == null)  {
                            comprador = new Comprador();
                            resp.setComprador(comprador);
                        }
                        resp.getComprador().setNomeCompradorNegocio(valor);
                    }
                    
                    if ("FIRSTNAME".equals(chave))      {
                        if (comprador == null)  { 
                            comprador = new Comprador();
                            resp.setComprador(comprador);
                        }
                        resp.getComprador().setPrimeiroNome(valor);
                    }
                    
                    if ("LASTNAME".equals(chave))      {
                        if (comprador == null)  {
                            comprador = new Comprador();
                            resp.setComprador(comprador);
                        }
                        resp.getComprador().setUltimoNome(valor);
                    }
                    
                    if ("MIDDLENAME".equals(chave))      {
                        if (comprador == null)  {
                            comprador = new Comprador();
                            resp.setComprador(comprador);
                        }
                        resp.getComprador().setNomeDoMeio(valor);
                    }
                    
                    if ("SALUTATION".equals(chave))      {
                        if (comprador == null)  {
                            comprador = new Comprador();
                            resp.setComprador(comprador);
                        }
                        resp.getComprador().setSaudacao(valor);
                    }
                    
                    if ("SUFFIX".equals(chave))      {
                        if (comprador == null)  {
                            comprador = new Comprador();
                            resp.setComprador(comprador);
                        }
                        resp.getComprador().setSufixoNome(valor);
                    }
                    
                    if ("TAXID".equals(chave))      {
                        if (comprador == null)  {
                            comprador = new Comprador();
                            resp.setComprador(comprador);
                        }
                        resp.getComprador().setNroRegistroReceita(valor);
                    }
                    
                    if ("TAXIDTYPE".equals(chave))      {
                        if (comprador == null)  {
                            comprador = new Comprador();
                            resp.setComprador(comprador);
                        }
                        if ("BR_CPF".equals(valor))     {
                            resp.getComprador().setTipoRegistroReceita(TipoRegistroReceita.CPF);
                        }   else if ("BR_CNPJ".equals(valor))     {
                            resp.getComprador().setTipoRegistroReceita(TipoRegistroReceita.CNPJ);
                        }                        
                    }
                    
                    
                    if ("SHIPTONAME".equals(chave))      {
                        if (dadosEntrega==null)     {
                            dadosEntrega = new DadosEntrega();
                            resp.setDadosEntrega(dadosEntrega);
                        }
                        resp.getDadosEntrega().setNomeEntrega(valor);
                    }                    
                    
                    if ("SHIPTOSTREET".equals(chave))      {
                        if (dadosEntrega==null)     {
                            dadosEntrega = new DadosEntrega();
                            resp.setDadosEntrega(dadosEntrega);
                        }
                        resp.getDadosEntrega().setEnderecoEntrega(valor);
                    }                    
                    
                    if ("SHIPTOSTREET2".equals(chave))      {
                        if (dadosEntrega==null)     {
                            dadosEntrega = new DadosEntrega();
                            resp.setDadosEntrega(dadosEntrega);
                        }
                        resp.getDadosEntrega().setComplementoEnderecoEntrega(valor);
                    }                    
                    
                    if ("SHIPTOCITY".equals(chave))      {
                        if (dadosEntrega==null)     {
                            dadosEntrega = new DadosEntrega();
                            resp.setDadosEntrega(dadosEntrega);
                        }
                        resp.getDadosEntrega().setCidadeEntrega(valor);
                    }  
                    
                    
                    if ("SHIPTOZIP".equals(chave))      {
                        if (dadosEntrega==null)     {
                            dadosEntrega = new DadosEntrega();
                            resp.setDadosEntrega(dadosEntrega);
                        }
                        resp.getDadosEntrega().setCepEntrega(valor);
                    }                    
                    
                    if ("SHIPTOCOUNTRYCODE".equals(chave))      {
                        if (dadosEntrega==null)     {
                            dadosEntrega = new DadosEntrega();
                            resp.setDadosEntrega(dadosEntrega);
                        }
                        resp.getDadosEntrega().setCodPaisEntrega(valor);
                    }     
                    
                    if ("SHIPTOCOUNTRYNAME".equals(chave))      {
                        if (dadosEntrega==null)     {
                            dadosEntrega = new DadosEntrega();
                            resp.setDadosEntrega(dadosEntrega);
                        }
                        resp.getDadosEntrega().setNomePaisEntrega(valor);
                    }  
                    
                    if ("SHIPTOSTATE".equals(chave))      {
                        if (dadosEntrega==null)     {
                            dadosEntrega = new DadosEntrega();
                            resp.setDadosEntrega(dadosEntrega);
                        }
                        resp.getDadosEntrega().setEstadoEntrega(valor);
                    }                    
                    
                    if ("SHIPTOPHONE".equals(chave))      {
                        if (dadosEntrega==null)     {
                            dadosEntrega = new DadosEntrega();
                            resp.setDadosEntrega(dadosEntrega);
                        }
                        resp.getDadosEntrega().setTelefoneEntrega(valor);
                    }
                    
                    if ("ADDRESSSTATUS".equals(chave))      {
                        if (dadosEntrega==null)     {
                            dadosEntrega = new DadosEntrega();
                            resp.setDadosEntrega(dadosEntrega);
                        }
                        resp.getDadosEntrega().setStatusEnderecoEntrega(valor);
                    }
                    
                    if ("AMT".equals(chave))      {
                        resp.setTotal(valor);
                    }
                    
                    if ("CURRENCYCODE".equals(chave))      {
                        resp.setMoeda(valor);
                    }
                    
                    if ("SHIPPINGAMT".equals(chave))      {
                        if (dPagto==null)       {
                            dPagto = new DadosPagamento();
                            resp.setDadosPagamento(dPagto);
                        }
                        resp.getDadosPagamento().setTotalEntrega(valor);
                    }
                    
                    if ("INSURANCEAMT".equals(chave))      {
                        if (dPagto==null)       {
                            dPagto = new DadosPagamento();
                            resp.setDadosPagamento(dPagto);
                        }
                        resp.getDadosPagamento().setTotalSeguro(valor);
                    }
                    
                    if ("_SHIPDISCAMT".equals(chave))      {
                        if (dPagto==null)       {
                            dPagto = new DadosPagamento();
                            resp.setDadosPagamento(dPagto);
                        }
                        resp.getDadosPagamento().setTotalDescontoEntrega(valor);
                    }
                    
                    if ("NOTETEXT".equals(chave))      {
                        if (dPagto==null)       {
                            dPagto = new DadosPagamento();
                            resp.setDadosPagamento(dPagto);
                        }
                        resp.getDadosPagamento().setNota(valor);
                    }
                    
                    if ("HANDLINGAMT".equals(chave))      {
                        if (dPagto==null)       {
                            dPagto = new DadosPagamento();
                            resp.setDadosPagamento(dPagto);
                        }
                        resp.getDadosPagamento().setTotalManuseio(valor);
                    }
                    
                    if ("TAXAMT".equals(chave))      {
                        if (dPagto==null)       {
                            dPagto = new DadosPagamento();
                            resp.setDadosPagamento(dPagto);
                        }
                        resp.getDadosPagamento().setTotalImposto(valor);
                    }
                     
                    if ("ITEMAMT".equals(chave))      {
                        if (dPagto==null)       {
                            dPagto = new DadosPagamento();
                            resp.setDadosPagamento(dPagto);
                        }
                        resp.getDadosPagamento().setTotalItem(valor);
                    }
                    
                    if ("PAYMENTREQUEST_0_DESC".equals(chave))      {
                        if (dPagto==null)       {
                            dPagto = new DadosPagamento();
                            resp.setDadosPagamento(dPagto);
                        }
                        resp.getDadosPagamento().setDescricao(valor);
                    }
                    
                    if ("PAYMENTREQUEST_0_CUSTOM".equals(chave))      {
                        if (dPagto==null)       {
                            dPagto = new DadosPagamento();
                            resp.setDadosPagamento(dPagto);
                        }
                        resp.getDadosPagamento().setTextoCustomizado(valor);
                    }
                    
                    if ("PAYMENTREQUEST_0_NOTIFYURL".equals(chave))      {
                        if (dPagto==null)       {
                            dPagto = new DadosPagamento();
                            resp.setDadosPagamento(dPagto);
                        }
                        resp.getDadosPagamento().setUrlNotificacao(valor);
                    }
                    
                    if ("PAYMENTREQUEST_0_INVNUM".equals(chave))      {
                        if (dPagto==null)       {
                            dPagto = new DadosPagamento();
                            resp.setDadosPagamento(dPagto);
                        }
                        resp.getDadosPagamento().setNroPedido(valor);
                    }
                    
                    if ("PAYMENTREQUEST_0_TRANSACTIONID".equals(chave))      {
                        resp.setTransactionId(valor);
                    }
                    
                    /*if (chave.startsWith("L_PAYMENTREQUEST_0"))         {
                        
                        inicializaItensCompra(itensVenda, chave, valor);
                    }*/
                    
                }
            }   catch(UnsupportedEncodingException ex)  {
                logger.error("Erro de parser: " + ex.getLocalizedMessage(), ex);
            }
            
        }
        
        return resp;
    }
    
    private void inicializaItensCompra(List<ItemVenda> itensVenda, String chave, String valor)    {
        if (chave != null && !"".equals(chave) && chave.startsWith("L_PAYMENTREQUEST_0"))    {
            int indice = Integer.valueOf(chave.substring(chave.length()));
            ItemVenda item = null;
            if (itensVenda.size()==(indice+1))   {
                item = new ItemVenda(); 
                itensVenda.add(item);
            }
            item = itensVenda.get(indice);
            atribuiValorItemVenda(item, chave, valor, indice);
        }
    }
    
    private void atribuiValorItemVenda(ItemVenda item, String chave, String valor, int indice)      {
        String inicio = "L_PAYMENTREQUEST_0";
        
        if (chave.equals(inicio + "_NAME" + Integer.valueOf(indice)))     {
            item.setNome(valor);
        }   else if (chave.equals(inicio + "_DESC" + String.valueOf(indice)))     {
            item.setDescricao(valor);
        }   else if (chave.equals(inicio + "_AMT" + String.valueOf(indice)))     {
            item.setTotal(valor);
        }   else if (chave.equals(inicio + "_ITEMCATEGORY" + String.valueOf(indice)))     {
            if (valor.equalsIgnoreCase("Digital"))  {
                item.setCategoria(CategoriaItem.Digital);
            }   else    {
                item.setCategoria(CategoriaItem.Fisico);
            }
        }   else if (chave.equals(inicio + "_QTY" + String.valueOf(indice)))     {
            item.setQuantidade(Integer.parseInt(valor));
        }
    }
}
