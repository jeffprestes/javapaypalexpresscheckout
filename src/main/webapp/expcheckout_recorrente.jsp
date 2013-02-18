<%-- 
    Document   : expcheckout_recorrente
    Created on : Jan 23, 2013, 1:04:51 PM
    Author     : aalonso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PayPal Java Testes - Express Checkout - Pagamento Recorrente</title>
    </head>
    <body>
        <h1>PayPal Java Testes - Express Checkout - Pagamento Recorrente</h1>
        
            <form action='<c:out value="${pageContext.servletContext.contextPath}" />/ExpressCheckoutController' method="POST">
                <table>
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
                    <td>Tipo de fluxo (USERACTION): </td>
                    <td>
                        <select id="NAOENVIAR_TIPOFLUXO" name="NAOENVIAR_TIPOFLUXO">
                            <option value="commit" selected="selected">TRADICIONAL</option>
                            <option value="shortcut">SHORTCUT</option>
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
                    <td>Metodo (METHOD): </td>
                    <td>
                        <input type="text" value="SetExpressCheckout" size="60" name="METHOD" id="METHOD" />
                    </td>
                </tr>
                <tr>
                    <td>Tipo de pagamento (L_BILLINGTYPE0): </td>
                    <td>
                        <input type="text" value="RecurringPayments" size="60" name="L_BILLINGTYPE0" id="L_BILLINGTYPE0" />
                    </td>
                </tr>
                <tr>
                    <td>Descrição do contrato de pagamento (L_BILLINGAGREEMENTDESCRIPTION0): </td>
                    <td>
                        <input type="text" value="Exemplo" size="60" name="L_BILLINGAGREEMENTDESCRIPTION0" id="L_BILLINGAGREEMENTDESCRIPTION0" />
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
                    <td>
                        Url de retorno (RETURNURL): </td>
                    <td>
                        <input type="text" value='http://<c:out value="${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.servletContext.contextPath}" />/expcheckout_recorrente_retorno.jsp' name="RETURNURL" id="RETURNURL" size="100" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Url de cancelamento (CANCELURL): </td>
                    <td>
                        <input type="text" value='http://<c:out value="${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.servletContext.contextPath}" />/expcheckout_recorrente_retorno.jsp' name="CANCELURL" id="CANCELURL" size="100" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Moeda (CURRENCYCODE) : </td>
                    <td>
                        <input type="text" value="BRL" name="CURRENCYCODE" id="CURRENCYCODE" size="6" />
                    </td>
                </tr>
                </table>
              <hr>
            </br>
            <h2>Dados da Assinatura</h2>
            </br>
                    <table>
                <tr>
                    <td>Valor da assinatura (AMT): </td>
                    <td>
                        <input type="text" value="10" size="10" name="AMT" id="AMT" />
                    </td>
                </tr>
                <tr>
                    <td>Período de pagamento (BILLINGPERIOD): </td>
                    <td>
                        <select id="BILLINGPERIOD" name="BILLINGPERIOD" >
                            <option value='Day'>Diário</option>
                            <option value='Week'>Semanal</option>
                            <option value='SemiMonth'>SemiMonth</option>
                            <option value='Year'>Anual</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Frequência de pagamento dentro do período (BILLINGFREQUENCY): </td>
                    <td>
                        <input type="text" value='' size="10" name="BILLINGFREQUENCY" id="BILLINGFREQUENCY" />
                    </td>
                </tr>
                <input type="hidden" value="recorrente" size="60" name="SOURCE" id="SOURCE" />
                <!--
                <tr>
                    <td>
                        Localização (LOCALECODE) : </td>
                    <td>
                        <input type="text" value="pt_BR" name="LOCALECODE" id="LOCALECODE" size="6" />
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Moeda (COUNTRYCODE) : </td>
                    <td>
                        <input type="text" value="BR" name="COUNTRYCODE" id="v" size="6" />
                    </td>
                </tr>-->
                <tr>
                    <td colspan="2" style="vertical-align: middle; text-align: center">
                        <input type="submit" name="Submit" value="Submit" />
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
