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
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>    
                <td>Texto Livre (---): </td>
                <td>
                    <c:out value="${resposta.textoLivre}"/>
                </td>
            </tr>
            <tr>    
                <td>N&uacute;mero de Pedido (---): </td>
                <td>
                    <c:out value="${resposta.nroPedido}"/>
                </td>
            </tr>
            </form>
        </table>
    </body>
</html>
