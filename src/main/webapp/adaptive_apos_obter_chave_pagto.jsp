<%-- 
    Document   : adaptive_apos_obter_chave_pagto
    Created on : Jul 24, 2012, 6:03:48 PM
    Author     : jprestes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PayPal Java Testes - Adaptative - Pagamento simples - Apos obter chave pagamento (PayKey)</title>
    </head>
    <body>
        <h1>Chamada executada!</h1>
        <h2>Veja retorno abaixo:</h2>
        <table>
            <tr>
                <td>responseEnvelope.ACK</td>
                <td><c:out value="${resposta.envelope.ack}" /></td>
            </tr>
            <tr>
                <td>responseEnvelope.correlationId</td>
                <td></td>
            </tr>
            <tr>
                <td>responseEnvelope.build</td>
                <td></td>
            </tr>
            <tr>
                <td>responseEnvelope.timestamp</td>
                <td></td>
            </tr>
            <tr>
                <td>PayKey</td>
                <td></td>
            </tr>
            <tr>
                <td>PaymentExecStatus</td>
                <td></td>
            </tr>
        </table>
    </body>
</html>
