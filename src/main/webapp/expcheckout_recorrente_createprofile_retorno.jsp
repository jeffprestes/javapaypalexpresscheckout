<%-- 
    Document   : expcheckout_recorrente_createprofile
    Created on : Jan 23, 2013, 2:30:31 PM
    Author     : aalonso
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Retorno da chamada do CreateRecurringPaymentsProfile</title>
    </head>
    <body>
        <h1>Retorno da chamada do CreateRecurringPaymentsProfile</h1>
        <br />
        <table>
            <tr>
                <td>ACK : </td>
                <td><c:out value="${resposta.cabecalho.ack}" /> </td>
    </tr>
    <tr>
        <td>Timestamp : </td>
        <td><c:out value="${resposta.cabecalho.timestamp}" /></td>
</tr>
<tr>
    <td>CorrelationID : </td>
    <td><c:out value="${resposta.cabecalho.idCorrelacao}" /></td>
</tr>
<tr>
    <td>Build : </td>
    <td><c:out value="${resposta.cabecalho.build}" /></td>
</tr>
<tr>
    <td>Versão : </td>
    <td><c:out value="${resposta.versao}" /></td>
</tr>
<tr>
    <td>Profile ID : </td>
    <td><c:out value="${resposta.profileId}" /></td>
</tr>
<tr>
    <td>Profile Status : </td>
    <td><c:out value="${resposta.profileStatus}" /></td>
</tr>
</table>
<br />
<div style="text-align: center">Para mais detalhes veja no log do servidor</div>
<br />
<form action="<c:out value='${pageContext.servletContext.contextPath}' />/ExpressCheckoutController" method="POST">
    <input type="hidden" id="PROFILEID" name="PROFILEID" value="<c:out value='${resposta.profileId}' />">
    <input type="hidden" id="METHOD" name="METHOD" value="GetRecurringPaymentsProfileDetails">
    <input type="hidden" id="NAOENVIAR_ENDPOINT" name="NAOENVIAR_ENDPOINT" value="https://api-3t.sandbox.paypal.com/nvp">
    <input type="hidden" value="jeffprestes_api1.gmail.com" size="60" name="USER" id="USER" />
    <input type="hidden" value="3SZKBPGTTLMVQ66B" size="60" name="PWD" id="PWD" />
    <input type="hidden" value="ATutHe2f5sqGdXTHx0Gdsr3F4EnaAPbdeidoBxokDfl3cK.mR1XmuSHH" size="60" name="SIGNATURE" id="SIGNATURE" />
    <input type="hidden" value="91.0" size="10" name="VERSION" id="VERSION" />

    <input type="submit" value="Get Recurring Profile Details">
</form>
</body>
</html>
