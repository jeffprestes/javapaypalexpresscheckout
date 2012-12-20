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
        <title>PayPal Java Testes - Express Checkout - Pagamento simples com Frete Fácil</title>
    </head>
    <body>
        <h1>PayPal Java Testes - Express Checkout - Pagamento simples com Frete Fácil</h1>
        <table>
            <form action='<c:out value="${pageContext.servletContext.contextPath}" />/FreteFacilController' method="POST">      
            <tr>
                <td>Metodo (METHOD): </td>
                <td>
                    <input type="text" value="CalculateFrete" size="60" name="METHOD" id="METHOD" />
                </td>
            </tr>
            <tr>
                <td>CEP de origem: </td>
                <td>
                    <input type="text" value="09291-230" size="60" name="CEPORIGEM" id="CEPORIGEM" />
                </td>
            </tr>
            <tr>
                <td>CEP de destino: </td>
                <td>
                    <input type="text" value="02721-110" size="60" name="CEPDESTINO" id="CEPDESTINO" />
                </td>
            </tr>
            <tr>
                <th>Características físicas do Produto: </th>
            </tr>
            <tr>
                <td>Largura : </td>
                <td>
                    <input type="text" value="6" size="60" name="LARGURA" id="LARGURA" />
                </td>
            </tr>
            <tr>
                <td>Altura: </td>
                <td>
                    <input type="text" value="12" size="60" name="ALTURA" id="ALTURA" />
                </td>
            </tr>
            <tr>
                <td>Profundidade: </td>
                <td>
                    <input type="text" size="60" value="10" name="PROFUNDIDADE" id="PROFUNDIDADE" />
                </td>
            </tr>
            <tr>
                <td>Peso (Kg): </td>
                <td>
                    <input type="text"  size="60" value="0.5" name="PESO" id="PESO" />
                </td>
            </tr>
            </form>
        </table>
    </body>
</html>