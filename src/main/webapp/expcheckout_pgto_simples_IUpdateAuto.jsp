<%-- 
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
        <title>PAYPAL-SHOP Instant UPDATE</title>
    </head>
    <body>
        <td colspan="2" style="vertical-align: middle; text-align: center">
        <h4>Redirecionando....</h4>
        <table>
            <form action='<c:out value="${pageContext.servletContext.contextPath}" />/ExpressCheckoutController' method="POST">
                        <input type="hidden" value="0" size="60" name="NAOENVIAR_OPCREDIRECT" id="NAOENVIAR_OPCREDIRECT" />
                        <input type="hidden" value="https://api-3t.sandbox.paypal.com/nvp" size="60" name="NAOENVIAR_ENDPOINT" id="NAOENVIAR_ENDPOINT" />
                        <input type="hidden" value="_express-checkout" size="60" name="NAOENVIAR_TIPOCHECKOUT" id="NAOENVIAR_TIPOCHECKOUT" />
                        <input type="hidden" value="commit" size="60" name="NAOENVIAR_TIPOFLUXO" id="NAOENVIAR_TIPOFLUXO" />
                        <input type="hidden" value="SetExpressCheckout" size="60" name="METHOD" id="METHOD" />
                        <input type="hidden" value="SALE" size="60" name="PAYMENTREQUEST_0_PAYMENTACTION" id="PAYMENTREQUEST_0_PAYMENTACTION" />
                        <input type="hidden" value="91.0" size="10" name="VERSION" id="VERSION" />
                        <input type="hidden" value="jeffprestes_api1.gmail.com" size="60" name="USER" id="USER" />
                        <input type="hidden" value="3SZKBPGTTLMVQ66B" size="60" name="PWD" id="PWD" />
                        <input type="hidden" value="ATutHe2f5sqGdXTHx0Gdsr3F4EnaAPbdeidoBxokDfl3cK.mR1XmuSHH" size="60" name="SIGNATURE" id="SIGNATURE" />
                        <input type="hidden" value='http://java-pp.rhcloud.com/expcheckout_retorno.jsp' name="RETURNURL" id="RETURNURL" size="100" />
                        <input type="hidden" value='http://java-pp.rhcloud.com/expcheckout_retorno.jsp' name="CANCELURL" id="CANCELURL" size="100" />
                        <input type="hidden" value='http://java-ppbrasil.rhcloud.com/FreteServlet' name="CALLBACK" id="CALLBACK" size="100" />
                        <input type="hidden" value='9' name="CALLBACKTIMEOUT" id="CALLBACKTIMEOUT" size="100" />
                        <input type="hidden" value="pt_BR" name="LOCALECODE" id="LOCALECODE" size="6" />
                        <input type="hidden" value="BRL" name="PAYMENTREQUEST_0_CURRENCYCODE" id="PAYMENTREQUEST_0_CURRENCYCODE" size="100" />
                        <input type="hidden" value="14.32" name="PAYMENTREQUEST_0_AMT" id="PAYMENTREQUEST_0_AMT" size="100" />
                        <input type="hidden" value="10.32" name="PAYMENTREQUEST_0_ITEMAMT" id="PAYMENTREQUEST_0_ITEMAMT" size="100" />
                        <input type="hidden" value="50.32" name="MAXAMT" id="MAXAMT" size="100" />
                        <input type="hidden" value="4.00" name="PAYMENTREQUEST_0_SHIPPINGAMT" id="PAYMENTREQUEST_0_SHIPPINGAMT" size="100" />
                        <input type="hidden" value="false" name="PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED" id="PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED" size="100" />
                        <input type="hidden" value="TV LED 42pol" name="L_PAYMENTREQUEST_0_NAME0" id="L_PAYMENTREQUEST_0_NAME0" size="100" />
                        <input type="hidden" value="TV LED Marca Xpto de 42 polegadas, com TV Digital e interativa integrada" name="L_PAYMENTREQUEST_0_DESC0" id="L_PAYMENTREQUEST_0_DESC0" size="100" />
                        <input type="hidden" value="9.32" name="L_PAYMENTREQUEST_0_AMT0" id="L_PAYMENTREQUEST_0_AMT0" size="100" />
                        <input type="hidden" value="0" name="L_PAYMENTREQUEST_0_NUMBER0" id="L_PAYMENTREQUEST_0_NUMBER0" size="100" />
                        <input type="hidden" value="1" name="L_PAYMENTREQUEST_0_QTY0" id="L_PAYMENTREQUEST_0_QTY0" size="100" />
                        <input type="hidden" value="kgs" name="L_PAYMENTREQUEST_0_ITEMWEIGHTUNIT0" id="L_PAYMENTREQUEST_0_ITEMWEIGHTUNIT0" size="100" />
                        <input type="hidden" value="0.8" name="L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE0" id="L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE0" size="100" />
                        <input type="hidden" value="6" name="L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE0" id="L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE0" size="100" />
                        <input type="hidden" value="15" name="L_PAYMENTREQUEST_0_ITEMWIDTHVALUE0" id="L_PAYMENTREQUEST_0_ITEMWIDTHVALUE0" size="100" />
                        <input type="hidden" value="19" name="L_PAYMENTREQUEST_0_ITEMLENGTHVALUE0" id="L_PAYMENTREQUEST_0_ITEMLENGTHVALUE0" size="100" />
                        <input type="hidden" value="Garantia Extendida" name="L_PAYMENTREQUEST_0_NAME1" id="L_PAYMENTREQUEST_0_NAME1" size="100" />
                        <input type="hidden" value="Garantia extendida de até 3 anos" name="L_PAYMENTREQUEST_0_DESC1" id="L_PAYMENTREQUEST_0_DESC1" size="100" />
                        <input type="hidden" value="1.00" name="L_PAYMENTREQUEST_0_AMT1" id="L_PAYMENTREQUEST_0_AMT1" size="100" />
                        <input type="hidden" value="1" name="L_PAYMENTREQUEST_0_NUMBER1" id="L_PAYMENTREQUEST_0_NUMBER1" size="100" />
                        <input type="hidden" value="1" name="L_PAYMENTREQUEST_0_QTY1" id="L_PAYMENTREQUEST_0_QTY1" size="100" />
                        <input type="hidden" value="kgs" name="L_PAYMENTREQUEST_0_ITEMWEIGHTUNIT1" id="L_PAYMENTREQUEST_0_ITEMWEIGHTUNIT1" size="100" />
                        <input type="hidden" value="0.5" name="L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE1" id="L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE1" size="100" />
                        <input type="hidden" value="5" name="L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE1" id="L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE1" size="100" />
                        <input type="hidden" value="14" name="L_PAYMENTREQUEST_0_ITEMWIDTHVALUE1" id="L_PAYMENTREQUEST_0_ITEMWIDTHVALUE1" size="100" />
                        <input type="hidden" value="24" name="L_PAYMENTREQUEST_0_ITEMLENGTHVALUE1" id="L_PAYMENTREQUEST_0_ITEMLENGTHVALUE1" size="100" />
                        <input type="hidden" value="true" name="L_SHIPPINGOPTIONISDEFAULT0" id="L_SHIPPINGOPTIONISDEFAULT0" size="100" />
                        <input type="hidden" value="Padrao 1" name="L_SHIPPINGOPTIONNAME0" id="L_SHIPPINGOPTIONNAME0" size="100" />
                        <input type="hidden" value="4.00" name="L_SHIPPINGOPTIONAMOUNT0" id="L_SHIPPINGOPTIONAMOUNT0" size="100" />
                        
                <tr>
                    <td colspan="2" style="vertical-align: middle; text-align: center">
                        <input type="submit" name="Submit" value="Submit" />
                    </td>
                </tr>
            </form>
                        <% document.forms[0].submit() %>
        </table>
    </body>
</html>
