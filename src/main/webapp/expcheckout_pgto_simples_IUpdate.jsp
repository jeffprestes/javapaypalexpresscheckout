 n<%-- 
    Document   : expcheckout_pgto_simples.jsp
    Created on : 05/06/2012, 14:36:18
    Author     : jeffprestes
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PayPal Java Testes - Express Checkout - Pagamento simples</title>
    </head>
    <body>
        <h1>PayPal Java Testes - Express Checkout - Pagamento simples - Sem pagamento paralelo</h1>
        <table>
            <form action='<c:out value="${pageContext.servletContext.contextPath}" />/ExpressCheckoutController' method="POST">
            <tr>
                <td>Quer ver os parametros antes de redirecionar? </td>
                <td>
                    <select id="NAOENVIAR_OPCREDIRECT" name="NAOENVIAR_OPCREDIRECT">
                        <option value="0">NÃO</option>
                        <option value="1">SIM</option>
                    </select>
                </td>
            </tr>    
            <tr>
                <td>URL do EndPoint: </td>
                <td>
                    <select id="NAOENVIAR_ENDPOINT" name="NAOENVIAR_ENDPOINT">
                        <option value="https://api-3t.sandbox.paypal.com/nvp">Sandbox - api-3t.sandbox.paypal.com/nvp</option>
                        <option value="https://api-3t.paylpal.com/nvp">Produção - api-3t.paypal.com</option>
                    </select>
                </td>
            </tr>    
            <tr>
                <td>Tipo de checkout (CMD): </td>
                <td>
                    <select id="NAOENVIAR_TIPOCHECKOUT" name="NAOENVIAR_TIPOCHECKOUT">
                        <option value="_express-checkout" selected="selected">WEB</option>
                        <option value="_express-checkout-mobile">Mobile</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Tipo de fluxo (USERACTION): </td>
                <td>
                    <select id="NAOENVIAR_TIPOFLUXO" name="NAOENVIAR_TIPOFLUXO">
                        <option value="commit" selected="selected">TRADICIONAL</option>
                        <option value="shortcut">SHORTCUT</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Metodo (METHOD): </td>
                <td>
                    <input type="text" value="SetExpressCheckout" size="60" name="METHOD" id="METHOD" />
                </td>
            </tr>
            <tr>
                <td>Acao (PAYMENTREQUEST_0_PAYMENTACTION): </td>
                <td>
                    <input type="text" value="SALE" size="60" name="PAYMENTREQUEST_0_PAYMENTACTION" id="PAYMENTREQUEST_0_PAYMENTACTION" />
                </td>
            </tr>
            <tr>
                <td>Versao (VERSION - Para saber a ultima versão vá a pagina paypal.com e veja no fonte da pagina os 3 primeiros digitos do campo webversion) : </td>
                <td>
                    <input type="text" value="91.0" size="10" name="VERSION" id="VERSION" />
                </td>
            </tr>
           <tr>
                <td>Usuario (USER): </td>
                <td>
                    <input type="text" value="jeffprestes_api1.gmail.com" size="60" name="USER" id="USER" />
                </td>
            </tr>
            <tr>
                <td>Senha (PWD): </td>
                <td>
                    <input type="text" value="3SZKBPGTTLMVQ66B" size="60" name="PWD" id="PWD" />
                </td>
            </tr>
            <tr>
                <td>Assinatura (SIGNATURE): </td>
                <td>
                    <input type="text" value="ATutHe2f5sqGdXTHx0Gdsr3F4EnaAPbdeidoBxokDfl3cK.mR1XmuSHH" size="60" name="SIGNATURE" id="SIGNATURE" />
                </td>
            </tr>
            <tr>
                <td>Permissão a terceiros (SUBJECT): </td>
                <td>
                    <!-- <input type="text" value="" size="60" name="SUBJECT" id="SUBJECT" /> -->
                </td>
            </tr>
            <tr>
                <td>
                    Url de retorno (RETURNURL): </td>
                <td>
                    <input type="text" value='http://<c:out value="${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.servletContext.contextPath}" />/expcheckout_retorno.jsp' name="RETURNURL" id="RETURNURL" size="100" />
                </td>
            </tr>
            <tr>
                <td>
                    Url de cancelamento (CANCELURL): </td>
                <td>
                    <input type="text" value='http://<c:out value="${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.servletContext.contextPath}" />/expcheckout_retorno.jsp' name="CANCELURL" id="CANCELURL" size="100" />
                </td>
            </tr>
            <tr>
                <td>
                    Url de callback (CALLBACK): </td>
                <td>
                    <input type="text" value='http://<c:out value="${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.servletContext.contextPath}" />/FreteServlet' name="CALLBACK" id="CALLBACK" size="100" />
                </td>
            </tr>
            <tr>
                <td>
                    Tempo de resposta do CallBack (CALLBACKTIMEOUT): </td>
                <td>
                    <input type="text" value='3' name="CALLBACKTIMEOUT" id="CALLBACKTIMEOUT" size="100" />
                </td>
            </tr>
            <tr>
                <td>
                    Localização (LOCALECODE) : </td>
                <td>
                    <input type="text" value="pt_BR" name="LOCALECODE" id="LOCALECODE" size="6" />
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2"><hr /></td>
            </tr>
            <tr>  
                <td colspan="2">Dados financeiros/total da compra</td>
            </tr> 
             <tr>
                 <td colspan="2">&nbsp;</td>
            </tr>
            <tr>                
                <td>
                    Codigo da Moeda (PAYMENTREQUEST_0_CURRENCYCODE)
                </td>
                <td>
                    <input type="text" value="BRL" name="PAYMENTREQUEST_0_CURRENCYCODE" id="PAYMENTREQUEST_0_CURRENCYCODE" size="100" />
                </td>
            </tr>
            <tr>                
                <td>
                    TOTAL Geral (PAYMENTREQUEST_0_AMT)
                </td>
                <td>
                    <input type="text" value="14.32" name="PAYMENTREQUEST_0_AMT" id="PAYMENTREQUEST_0_AMT" size="100" />
                </td>
            </tr>
            
            <tr>                
                <td>
                    Total dos Itens (PAYMENTREQUEST_0_ITEMAMT)
                </td>
                <td>
                    <input type="text" value="10.32" name="PAYMENTREQUEST_0_ITEMAMT" id="PAYMENTREQUEST_0_ITEMAMT" size="100" />
                </td>
            </tr>
            <tr>                
                <td>
                    Total máximo esperado (MAXAMT)
                </td>
                <td>
                    <input type="text" value="14.32" name="MAXAMT" id="MAXAMT" size="100" />
                </td>
            </tr>
            <tr>                
                <td>
                    Total da taxa de entrega (PAYMENTREQUEST_0_SHIPPINGAMT)
                </td>
                <td>
                    <input type="text" value="4.00" name="PAYMENTREQUEST_0_SHIPPINGAMT" id="PAYMENTREQUEST_0_SHIPPINGAMT" size="100" />
                </td>
            </tr> 
             <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2"><hr /></td>
            </tr>
            <tr>  
                <td colspan="2">Informações sobre os itens de compra</td>
            </tr> 
            <tr>
                 <td colspan="2">&nbsp;</td>
            </tr>
            <tr>  
                <td colspan="2">&nbsp;&nbsp;Item 1</td>
            </tr> 
            <tr>                
                <td>
                    Nome (L_PAYMENTREQUEST_0_NAME0 - COMPR 127 CARACTERES)
                </td>
                <td>
                    <input type="text" value="TV LED 42pol" name="L_PAYMENTREQUEST_0_NAME0" id="L_PAYMENTREQUEST_0_NAME0" size="100" />
                </td>
            </tr>            
            <tr>                
                <td>
                    Descrição (L_PAYMENTREQUEST_0_DESC0 - COMPR 127 CARACTERES)
                </td>
                <td>
                    <input type="text" value="TV LED Marca Xpto de 42 polegadas, com TV Digital e interativa integrada" name="L_PAYMENTREQUEST_0_DESC0" id="L_PAYMENTREQUEST_0_DESC0" size="100" />
                </td>
            </tr> 
            <tr>                
                <td>
                    Valor do item (L_PAYMENTREQUEST_0_AMT0)
                </td>
                <td>
                    <input type="text" value="9.32" name="L_PAYMENTREQUEST_0_AMT0" id="L_PAYMENTREQUEST_0_AMT0" size="100" />
                </td>
            </tr> 
            <tr>                
                <td>
                    Numero do item (L_PAYMENTREQUEST_0_NUMBER0 - Usado para ordenar a lista de itens)
                </td>
                <td>
                    <input type="text" value="0" name="L_PAYMENTREQUEST_0_NUMBER0" id="L_PAYMENTREQUEST_0_NUMBER0" size="100" />
                </td>
            </tr> 
            <tr>                
                <td>
                    Quantidade (L_PAYMENTREQUEST_0_QTY0)
                </td>
                <td>
                    <input type="text" value="1" name="L_PAYMENTREQUEST_0_QTY0" id="L_PAYMENTREQUEST_0_QTY0" size="100" />
                </td>
            </tr>
            <tr>                
                <td>
                    Medida do peso (L_PAYMENTREQUEST_0_ITEMWEIGHTUNIT0)
                </td>
                <td>
                    <input type="text" value="kgs" name="L_PAYMENTREQUEST_0_ITEMWEIGHTUNIT0" id="L_PAYMENTREQUEST_0_ITEMWEIGHTUNIT0" size="100" />
                </td>
            </tr>
            <tr>                
                <td>
                    Peso (L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE0)
                </td>
                <td>
                    <input type="text" value="0.3" name="L_ITEMWEIGHTVALUE0" id="L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE0" size="100" />
                </td>
            </tr>
            <tr>                
                <td>
                    Altura (L_ITEMHEIGHTVALUE0)
                </td>
                <td>
                    <input type="text" value="3" name="L_ITEMHEIGHTVALUE0" id="L_ITEMHEIGHTVALUE0" size="100" />
                </td>
            </tr>
            <tr>                
                <td>
                    Largura (L_ITEMWIDTHVALUE0)
                </td>
                <td>
                    <input type="text" value="5" name="L_ITEMWIDTHVALUE0" id="L_ITEMWIDTHVALUE0" size="100" />
                </td>
            </tr>
            <tr>                
                <td>
                    Profundidade (L_ITEMLENGTHVALUE0)
                </td>
                <td>
                    <input type="text" value="10" name="L_ITEMLENGTHVALUE0" id="L_ITEMLENGTHVALUE0" size="100" />
                </td>
            </tr>
            <tr>
                 <td colspan="2">&nbsp;</td>
            </tr>
            <tr>  
                <td colspan="2">&nbsp;&nbsp;Item 2</td>
            </tr> 
            <tr>                
                <td>
                    Nome (L_PAYMENTREQUEST_0_NAME1 - COMPR 127 CARACTERES)
                </td>
                <td>
                    <input type="text" value="Garantia Extendida" name="L_PAYMENTREQUEST_0_NAME1" id="L_PAYMENTREQUEST_0_NAME1" size="100" />
                </td>
            </tr>            
            <tr>                
                <td>
                    Descrição (L_PAYMENTREQUEST_0_DESC1 - COMPR 127 CARACTERES)
                </td>
                <td>
                    <input type="text" value="Garantia extendida de até 3 anos" name="L_PAYMENTREQUEST_0_DESC1" id="L_PAYMENTREQUEST_0_DESC1" size="100" />
                </td>
            </tr> 
            <tr>                
                <td>
                    Valor do item (L_PAYMENTREQUEST_0_AMT1)
                </td>
                <td>
                    <input type="text" value="1.00" name="L_PAYMENTREQUEST_0_AMT1" id="L_PAYMENTREQUEST_0_AMT1" size="100" />
                </td>
            </tr> 
            <tr>                
                <td>
                    Numero do item (L_PAYMENTREQUEST_0_NUMBER1 - Usado para ordenar a lista de itens)
                </td>
                <td>
                    <input type="text" value="1" name="L_PAYMENTREQUEST_0_NUMBER1" id="L_PAYMENTREQUEST_0_NUMBER1" size="100" />
                </td>
            </tr> 
            <tr>                
                <td>
                    Quantidade (L_PAYMENTREQUEST_0_QTY1)
                </td>
                <td>
                    <input type="text" value="1" name="L_PAYMENTREQUEST_0_QTY1" id="L_PAYMENTREQUEST_0_QTY1" size="100" />
                </td>
            </tr>
            <tr>                
                <td>
                    Medida do peso (L_ITEMWEIGHTUNIT1)
                </td>
                <td>
                    <input type="text" value="kgs" name="L_ITEMWEIGHTUNIT1" id="L_ITEMWEIGHTUNIT1" size="100" />
                </td>
            </tr>
            <tr>                
                <td>
                    Peso (L_ITEMWEIGHTVALUE1)
                </td>
                <td>
                    <input type="text" value="0.5" name="L_ITEMWEIGHTVALUE1" id="L_ITEMWEIGHTVALUE1" size="100" />
                </td>
            </tr>
            <tr>                
                <td>
                    Altura (L_ITEMHEIGHTVALUE1)
                </td>
                <td>
                    <input type="text" value="2" name="L_ITEMHEIGHTVALUE1" id="L_ITEMHEIGHTVALUE1" size="100" />
                </td>
            </tr>
            <tr>                
                <td>
                    Largura (L_ITEMWIDTHVALUE1)
                </td>
                <td>
                    <input type="text" value="6" name="L_ITEMWIDTHVALUE1" id="L_ITEMWIDTHVALUE1" size="100" />
                </td>
            </tr>
            <tr>                
                <td>
                    Profundidade (L_ITEMLENGTHVALUE1)
                </td>
                <td>
                    <input type="text" value="4" name="L_ITEMLENGTHVALUE1" id="L_ITEMLENGTHVALUE1" size="100" />
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2"><hr /></td>
            </tr>
            <tr>  
                <td colspan="2">Informações sobre as entregas disponiveis</td>
            </tr> 
            <tr>
                 <td colspan="2">&nbsp;</td>
            </tr>
            <tr>  
                <td colspan="2">&nbsp;&nbsp;Entrega 1</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>                
                <td>
                    Entrega padrão (L_SHIPPINGOPTIONISDEFAULT0)
                </td>
                <td>
                    <input type="text" value="true" name="L_SHIPPINGOPTIONISDEFAULT0" id="L_SHIPPINGOPTIONISDEFAULT0" size="100" />
                </td>
            </tr> 
            <tr>                
                <td>
                    Nome da entrega (L_SHIPPINGOPTIONNAME0)
                </td>
                <td>
                    <input type="text" value="PAC" name="L_SHIPPINGOPTIONNAME0" id="L_SHIPPINGOPTIONNAME0" size="100" />
                </td>
            </tr> 
            <tr>                
                <td>
                    Taxa da entrega (L_SHIPPINGOPTIONAMOUNT0)
                </td>
                <td>
                    <input type="text" value="4.00" name="L_SHIPPINGOPTIONAMOUNT0" id="L_SHIPPINGOPTIONAMOUNT0" size="100" />
                </td>
            </tr> 
            <tr>
                <td colspan="2" style="vertical-align: middle; text-align: center">
                    <input type="submit" name="Submit" value="Submit" />
                </td>
            </tr>
            </form>
        </table>
    </body>
</html>
