<%-- 
    Document   : expcheckout_pgto_simples_fretefacil
    Created on : Dec 19, 2012, 9:52:37 AM
    Author     : aalonso
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Retorno da chamada do DoExpressCheckoutPayment</title>
    </head>
    <body>
        <h1>Retorno da chamada do DoExpressCheckoutPayment</h1>
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
    <td>Token : </td>
    <td><c:out value="${resposta.token}" /></td>
</tr>
</table>
<br />
<div style="text-align: center">Para mais detalhes veja no log do servidor</div>
<br />
<div style="text-align: center">
    <form action="expcheckout_getexpcheckoutdetails_request.jsp" method="POST">
        <input type="hidden" id="PAYMENTSTATUS" name="PAYMENTSTATUS" value="<c:out value='${resposta.paymentStatus}'/>">
        <input type="hidden" id="PENDINGREASON" name="PENDINGREASON" value="<c:out value='${resposta.pendingReason}'/>">
        <input type="hidden" id="REASONCODE" name="REASONCODE" value="<c:out value='${resposta.reasonCode}'/>">
        <input type="submit" id="submit" value="GetExpressCheckoutDetails">
    </div>
</body>
</html>
