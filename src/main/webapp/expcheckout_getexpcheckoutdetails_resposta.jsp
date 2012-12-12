<%-- 
    Document   : expcheckout_getexpcheckoutdetails_resposta.jsp
    Created on : 05/06/2012, 14:36:18
    Author     : jeffprestes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PayPal Java Testes - Express Checkout - Detalhes da Transação Express Checkout - Retorno</title>
    </head>
    <body>
        <h1>PayPal Java Testes - Express Checkout - Detalhes da Transação Express Checkout - Retorno</h1>
        <table>
            <form action='<c:out value="${pageContext.servletContext.contextPath}" />/ExpressCheckoutController' method="POST">   
            <tr>    
                <td>Token (TOKEN): </td>
                <td>
                    <c:out value="${resposta.token}"/>
                </td>
            </tr>
            <tr>    
                <td>Status (CHECKOUTSTATUS): </td>
                <td>
                    <c:out value="${resposta.statusCheckout}"/>
                </td>
            </tr>
            <tr>    
                <td>ID de Correlação (CORRELATIONID): </td>
                <td>
                    <c:out value="${resposta.correlationId}"/>
                </td>
            </tr>
            <tr>    
                <td>Ack (ACK): </td>
                <td>
                    <c:out value="${resposta.ack}"/>
                </td>
            </tr>
            <tr>    
                <td>Vers&atilde;o (VERSION): </td>
                <td>
                    <c:out value="${resposta.versao}"/>
                </td>
            </tr>
            <tr>    
                <td>Build (BUILD): </td>
                <td>
                    <c:out value="${resposta.cabecalho.build}"/>
                </td>
            </tr>
            <tr>    
                <td>Dados do Comprador (---): </td>
                <td>
                    <c:out value="${resposta.comprador}"/>
                </td>
            </tr>
            <tr>    
                <td>Moeda (PAYMENTREQUEST_0_CURRENCYCODE): </td>
                <td>
                    <c:out value="${resposta.moeda}"/>
                </td>
            </tr>
            
            <tr>    
                <td>Dados Entrega (---): </td>
                <td>
                    <c:out value="${resposta.dadosEntrega}"/>
                </td>
            </tr>
            <tr>    
                <td>Dados Pagamento (---): </td>
                <td>
                    <c:out value="${resposta.dadosPagamento}"/>
                </td>
            </tr>
            <tr>    
                <td>Total (PAYMENTREQUEST_0_AMT): </td>
                <td>
                    <c:out value="${resposta.total}"/>
                </td>
            </tr>
            </form>
        </table>
    </body>
</html>
