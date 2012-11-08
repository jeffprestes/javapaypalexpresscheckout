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
        <script src="https://www.paypalobjects.com/js/external/apdg.js" type="text/javascript"></script>
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
                <td><c:out value="${resposta.envelope.idCorrelacao}" /></td>
            </tr>
            <tr>
                <td>responseEnvelope.build</td>
                <td><c:out value="${resposta.envelope.build}" /></td>
            </tr>
            <tr>
                <td>responseEnvelope.timestamp</td>
                <td><c:out value="${resposta.envelope.timestamp}" /></td>
            </tr>
            <tr>
                <td>PayKey</td>
                <td><c:out value="${resposta.chavePagamento}" /></td>
            </tr>
            <tr>
                <td>PaymentExecStatus</td>
                <td><c:out value="${resposta.statusExecucaoPagamento}" /></td>
            </tr>
        </table>
        <hr />
        <h1>Minibrowser Sandbox</h1>
        <form action="https://www.sandbox.paypal.com/webapps/adaptivepayment/flow/pay" target="PPDGFrame"  class="standard">
            <input id="expType" type="hidden" name="expType" value="mini">
            <input id="country.x" type="hidden" name="country.x" value="br">
            <input id="locale" type="hidden" name="locale" value="pt_BR">
            <input id="change_locale" type="hidden" name="change_locale" value="1">
            <input id="paykey" type="hidden" name="paykey" value="<c:out value="${resposta.chavePagamento}" />">
            <input type="image" id="submitBtn" value="Pay with PayPal" src="https://www.paypalobjects.com/en_US/i/btn/btn_paynowCC_LG.gif">
        </form>
        <script type="text/javascript" charset="UTF-8"> 
            var embeddedPPFlow = new PAYPAL.apps.DGFlowMini({ trigger: 'submitBtn' }); 
	</script>
        <h1>Minibrowser Produção</h1>
        <h1>Minibrowser Sandbox</h1>
        <form action="https://www.paypal.com/webapps/adaptivepayment/flow/pay" target="PPDGFrame"  class="standard">
            <input id="expType" type="hidden" name="expType" value="mini">
            <input id="country.x" type="hidden" name="country.x" value="br">
            <input id="locale" type="hidden" name="locale" value="pt_BR">
            <input id="change_locale" type="hidden" name="change_locale" value="1">
            <input id="paykey" type="hidden" name="paykey" value="<c:out value="${resposta.chavePagamento}" />">
            <input type="image" id="submitBtn" value="Pay with PayPal" src="https://www.paypalobjects.com/en_US/i/btn/btn_paynowCC_LG.gif">
        </form>
        <script type="text/javascript" charset="UTF-8"> 
            var embeddedPPFlow = new PAYPAL.apps.DGFlowMini({ trigger: 'submitBtn' }); 
	</script>
    </body>
</html>
