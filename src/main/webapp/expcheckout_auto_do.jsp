<%-- 
    Document   : expcheckout_auto
    Created on : Jan 15, 2013, 3:52:21 PM
    Author     : aalonso
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Efetuando Transacao</title>
    </head>
    <body>

Efetuando Transacao...
        
        <%-- INCIO DoCheckout REQUEST --%>
        <form action='<c:out value="${pageContext.servletContext.contextPath}" />/ExpressCheckoutController2' method="POST">  

            <input type="hidden" value="https://api-3t.sandbox.paypal.com/nvp" size="60" name="NAOENVIAR_ENDPOINT" id="NAOENVIAR_ENDPOINT" />
            <input type="hidden" value="jeffprestes_api1.gmail.com" size="60" name="USER" id="USER" />

            <input type="hidden" value="3SZKBPGTTLMVQ66B" size="60" name="PWD" id="PWD" />

            <input type="hidden" value="ATutHe2f5sqGdXTHx0Gdsr3F4EnaAPbdeidoBxokDfl3cK.mR1XmuSHH" size="60" name="SIGNATURE" id="SIGNATURE" />

            <input type="hidden" value="DoExpressCheckoutPayment" size="60" name="METHOD" id="METHOD" />

            <input type="hidden" value="${sessionScope.token}" size="60" name="TOKEN" id="TOKEN" />

            <input type="hidden" value="${resposta.comprador.payerId}" size="60" name="PAYERID" id="PAYERID" />

            <input type="hidden" value="SALE" size="60" name="PAYMENTREQUEST_0_PAYMENTACTION" id="PAYMENTREQUEST_0_PAYMENTACTION" />

            <input type="hidden" value="91.0" size="60" name="VERSION" id="VERSION" />

            <input type="hidden" value="${resposta.total}" size="60" name="PAYMENTREQUEST_0_AMT" id="PAYMENTREQUEST_0_AMT" />

            <input type="hidden" value="${resposta.moeda}" size="60" name="PAYMENTREQUEST_0_CURRENCYCODE" id="PAYMENTREQUEST_0_CURRENCYCODE" />
            <tr>
                <td colspan="2" style="vertical-align: middle; text-align: center">
                    
                </td>
            </tr>
        </form>
            
            <script> document.form[0].submit(); </script>
            <%-- FIM DoCheckout REQUEST --%>
         
    </body>
</html>