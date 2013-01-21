<%-- 
    Document   : expcheckout_data
    Created on : Jan 16, 2013, 12:31:58 PM
    Author     : aalonso
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Dados da transacao</title>
    </head>
    <body>
        <h3>Efetuando Transacao . . . .</h3>
        <h4>Transacao Completa</h4>
        <h4>Redirecionando...</h4>
        <%-- INICIO dos DADOS --%>
        <table>
            <form action="DEMOretorno.jsp" method="POST">   

                <input type="hidden" value='<c:out value="${resposta.token}"/>' name="TOKEN" id="TOKEN">

                <input type="hidden" value='<c:out value="${resposta.statusCheckout}"/>' name="STATUS" id="STATUS">

                <input type="hidden" value='<c:out value="${resposta.timestamp}"/>' name="TIMESTAMP" id="TIMESTAMP">

                <input type="hidden" value='<c:out value="${resposta.correlationId}"/>' name="CORRELATIONID" id="CORRELATIONID">

                <input type="hidden" value='<c:out value="${resposta.transactionId}"/>' name="TRANSACTIONID" id="TRANSACTIONID">

                <input type="hidden" value='<c:out value="${resposta.ack}"/>' name="ACK" id="ACK">

                <input type="hidden" value='<c:out value="${resposta.versao}"/>' name="VERSAO" id="VERSAO">

                <input type="hidden" value='<c:out value="${resposta.cabecalho.build}"/>' name="BUILD" id="BUILD">

                <input type="hidden" value='<c:out value="${resposta.comprador.emailComprador}"/>' name="EMAILCOMPRADOR" id="EMAILCOMPRADOR">

                <input type="hidden" value='<c:out value="${resposta.comprador.payerId}"/>' name="PAYERID" id="PAYERID">

                <input type="hidden" value='<c:out value="${resposta.comprador.statusPagador}"/>' name="STATUSPAGADOR" id="STATUSPAGADOR">

                <input type="hidden" value='<c:out value="${resposta.comprador.primeiroNome}"/>' name="PRIMEIRONOME" id="PRIMEIRONOME">

                <input type="hidden" value='<c:out value="${resposta.comprador.ultimoNome}"/>' name="ULTIMONOME" id="ULTIMONOME">

                <input type="hidden" value='<c:out value="${resposta.comprador.paisComprador}"/>' name="PAISCOMPRADOR" id="PAISCOMPRADOR">

                <input type="hidden" value='<c:out value="${resposta.comprador.tipoRegistroReceita}"/>' name="IDTYPE" id="IDTYPE">

                <input type="hidden" value='<c:out value="${resposta.comprador.nroRegistroReceita}"/>' name="IDNUMBER" id="IDNUMBER">

                <input type="hidden" value='<c:out value="${resposta.dadosEntrega.nomeEntrega}"/>' name="NOMEENTREGA" id="NOMEENTREGA">

                <input type="hidden" value='<c:out value="${resposta.dadosEntrega.enderecoEntrega}"/>' name="ENDERECO" id="ENDERECO">

                <input type="hidden" value='<c:out value="${resposta.dadosEntrega.complementoEnderecoEntrega}"/>' name="ENDERECO2" id="ENDERECO2">

                <input type="hidden" value='<c:out value="${resposta.dadosEntrega.cidadeEntrega}"/>' name="CIDADE">

                <input type="hidden" value='<c:out value="${resposta.dadosEntrega.estadoEntrega}"/>' name="ESTADO" id="ESTADO">

                <input type="hidden" value='<c:out value="${resposta.dadosEntrega.cepEntrega}"/>' name="CEP" id="CEP">

                <input type="hidden" value='<c:out value="${resposta.dadosEntrega.codPaisEntrega}"/>' name="CODPAIS" id="CODPAIS">

                <input type="hidden" value='<c:out value="${resposta.dadosEntrega.nomePaisEntrega}"/>' name="PAIS" id="PAIS">

                <input type="hidden" value='<c:out value="${resposta.dadosEntrega.statusEnderecoEntrega}"/>' name="STATUSENDERECO" id="STATUSENDERECO">

                <input type="hidden" value='<c:out value="${resposta.moeda}"/>' name="MOEDA" id="MOEDA">

                <input type="hidden" value='<c:out value="${resposta.total}"/>' name="TOTAL" id="TOTAL">

                <input type="hidden" value='<c:out value="${resposta.dadosPagamento.totalItem}"/>' name="TOTALITEM" id="TOTALITEM">
                
                <input type="hidden" value=<%= request.getParameter("TOTALITEM")%> size="60" name="TOTALITEM" id="TOTALITEM" />
                
                <input type="hidden" value=<%= request.getParameter("ENTREGA")%> size="60" name="ENTREGA" id="ENTREGA" />
                
                <input type="hidden" value=<%= request.getParameter("TOTALENTREGA")%> size="60" name="TOTALENTREGA" id="TOTALENTREGA" />

                <input type="hidden" value='<c:out value="${resposta.dadosPagamento.totalManuseio}"/>' name="TOTALMANUSEIO" id="TOTALMANUSEIO">

                <input type="hidden" value='<c:out value="${resposta.dadosPagamento.totalImposto}"/>' name="TOTALIMPOSTO" id="TOTALIMPOSTO">

                <input type="hidden" value='<c:out value="${resposta.dadosPagamento.totalSeguro}"/>' name="TOTALSEGURO" id="TOTALSEGURO">

            </form>
            <script>document.forms[0].submit();</script>
        </table>
    </body>
</html>
