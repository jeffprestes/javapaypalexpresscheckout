<%-- 
    Document   : erro_expresscheckout_chamada
    Created on : Aug 30, 2012, 5:44:24 PM
    Author     : jprestes
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Erro na chamada do Express Checkout</title>
    </head>
    <body>
        <h1>Erro na chamada do Express Checkout</h1>
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
                <td><c:out value="${resposta.erro.version}" /></td>
            </tr>
            <tr>
                <td>Codigo Erro : </td>
                <td><c:out value="${resposta.erro.codigoErro}" /></td>
            </tr>
            <tr>
                <td>Msg Curta : </td>
                <td><c:out value="${resposta.erro.mensagemCurta}" /></td>
            </tr>
            <tr>
                <td>Msg Longa : </td>
                <td><c:out value="${resposta.erro.mensagemLonga}" /></td>
            </tr>
            <tr>
                <td>Cod Severidade : </td>
                <td><c:out value="${resposta.erro.codigoSeveridade}" /></td>
            </tr>
        </table>
        <br />
        <div style="text-align: center">Para mais detalhes veja no log do servidor</div>
        <br />
        <div style="text-align: center"><a href="expcheckout_pgto_simples.jsp"> Voltar formulario simples </a></div>
        <div style="text-align: center"><a href="expcheckout_pgto_simples_form_completo.jsp"> Voltar formulario completo </a></div>
    </body>
</html>
