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
        <title>JSP Page</title>
    </head>
    <body>
            
            <%-- INICIO GetDetails REQUEST --%>
        <form action='<c:out value="${pageContext.servletContext.contextPath}" />/ExpressCheckoutController2' method="POST">
            <input type="hidden" value="https://api-3t.sandbox.paypal.com/nvp" size="60" name="NAOENVIAR_ENDPOINT" id="NAOENVIAR_ENDPOINT" />
            <input type="hidden" value="0" size="60" name="NAOENVIAR_OPCREDIRECT" id="NAOENVIAR_OPCREDIRECT" />
            <input type="hidden" value="GetExpressCheckoutDetails" size="60" name="METHOD" id="METHOD" />
            <input type="hidden" value="jeffprestes_api1.gmail.com" size="60" name="USER" id="USER" />
            <input type="hidden" value="3SZKBPGTTLMVQ66B" size="60" name="PWD" id="PWD" />
            <input type="hidden" value="ATutHe2f5sqGdXTHx0Gdsr3F4EnaAPbdeidoBxokDfl3cK.mR1XmuSHH" size="60" name="SIGNATURE" id="SIGNATURE" />
            <input type="hidden" value="91.0" size="10" name="VERSION" id="VERSION" />
            <input type="hidden" value='<c:out value="${sessionScope.token}" />' size="60" name="TOKEN" id="TOKEN" />
            <tr>
                <td colspan="2" style="vertical-align: middle; text-align: center">
                    <input type="submit" value="GET DETAILS" />
                </td>
            </tr>
        </form>
        <%-- FIM GetDetails REQUEST --%>
        
        
         <%-- INICIO dos DADOS --%>
         <%--
        <table>
            <form action='<c:out value="${pageContext.servletContext.contextPath}" />/ExpressCheckoutController' method="POST">   
                <tr>
                <h2> Dados de Transação </h2>
                <br>
                </tr>
                <tr>
                <br>
                </tr>
                <tr>    
                    <td>Token = </td>
                    <td>(TOKEN): </td>
                    <td>
                <c:out value="${resposta.token}"/>
                </td>
                </tr>
                <tr>    
                    <td>Status = </td>
                    <td>(CHECKOUTSTATUS): </td>
                    <td>
                <c:out value="${resposta.statusCheckout}"/>
                </td>
                </tr>
                <tr>    
                    <td>Log de Tempo = </td>
                    <td>(TIMESTAMP): </td>
                    <td>
                <c:out value="${resposta.timestamp}"/>
                </td>
                </tr>
                <tr>    
                    <td>ID de Correlação = </td>
                    <td>(CORRELATIONID): </td>
                    <td>
                <c:out value="${resposta.correlationId}"/>
                </td>
                </tr>
                <tr>    
                    <td>ID da Transação = </td>
                    <td>(TRANSACTIONID): </td>
                    <td>
                <c:out value="${resposta.transactionId}"/>
                </td>
                </tr>
                <tr>    
                    <td>Ack = </td>
                    <td>(ACK): </td>
                    <td>
                <c:out value="${resposta.ack}"/>
                </td>
                </tr>
                <tr>    
                    <td>Vers&atilde;o = </td>
                    <td>(VERSION): </td>
                    <td>
                <c:out value="${resposta.versao}"/>
                </td>
                </tr>
                <tr>    
                    <td>Build = </td>
                    <td>(BUILD): </td>
                    <td>
                <c:out value="${resposta.cabecalho.build}"/>
                </td>
                </tr>
            </form>
        </table>
        <hr>
        <table>
            <form action='<c:out value="${pageContext.servletContext.contextPath}" />/ExpressCheckoutController' method="POST">
                <tr>
                    </hr>
                <h2> Dados do Comprador </h2>
                </tr>
                <tr>
                <br>
                </tr>

                <tr>    
                    <td>E-mail do Comprador = </td>
                    <td>(EMAIL): </td>
                    <td>
                <c:out value="${resposta.comprador.emailComprador}"/>
                </td>
                </tr>
                <tr>    
                    <td>ID do Comprador = </td>
                    <td>(PAYERID): </td>
                    <td>
                <c:out value="${resposta.comprador.payerId}"/>
                </td>
                </tr>
                <tr>    
                    <td>Status do Comprador = </td>
                    <td>(PAYERSTATUS): </td>
                    <td>
                <c:out value="${resposta.comprador.statusPagador}"/>
                </td>
                </tr>
                <tr>    
                    <td>Primeiro nome do Comprador = </td>
                    <td>(FIRSTNAME): </td>
                    <td>
                <c:out value="${resposta.comprador.primeiroNome}"/>
                </td>
                </tr>
                <tr>    
                    <td>Ultimo nome do Comprador = </td>
                    <td>(LASTNAME): </td>
                    <td>
                <c:out value="${resposta.comprador.ultimoNome}"/>
                </td>
                </tr>
                <tr>    
                    <td>Pais do Comprador = </td>
                    <td>(COUNTRYCODE): </td>
                    <td>
                <c:out value="${resposta.comprador.paisComprador}"/>
                </td>
                </tr>
                <tr>    
                    <td>Tipo de documento de identificação = </td>
                    <td>(TAXIDTYPE): </td>
                    <td>
                <c:out value="${resposta.comprador.tipoRegistroReceita}"/>
                </td>
                </tr>
                <tr>    
                    <td>Número do documento identificação = </td>
                    <td>(TAXID): </td>
                    <td>
                <c:out value="${resposta.comprador.nroRegistroReceita}"/>
                </td>
                </tr>
        </table>
        <hr>
        <table>
            <tr>
                </hr>
            <h2> Dados de Entrega </h2>
        </tr>
        <tr>
        <br>
        </tr>

        <tr>    
            <td>Nome do endereço de entrega = </td>
            <td>(SHIPTONAME): </td>
            <td>
        <c:out value="${resposta.dadosEntrega.nomeEntrega}"/>
    </td>
</tr>
<tr>    
    <td>Endereço de entrega = </td>
    <td>(SHIPTOSTREET): </td>
    <td>
<c:out value="${resposta.dadosEntrega.enderecoEntrega}"/>
</td>
</tr>
<tr>    
    <td>Complemento = </td>
    <td>(SHIPTOSTREET2): </td>
    <td>
<c:out value="${resposta.dadosEntrega.complementoEnderecoEntrega}"/>
</td>
</tr>
<tr>    
    <td>Cidade = </td>
    <td>(SHIPTOCITY): </td>
    <td>
<c:out value="${resposta.dadosEntrega.cidadeEntrega}"/>
</td>
</tr>
<tr>    
    <td>Estado = </td>
    <td>(SHIPTOSTATE): </td>
    <td>
<c:out value="${resposta.dadosEntrega.estadoEntrega}"/>
</td>
</tr>
<tr>    
    <td>CEP = </td>
    <td>(SHIPTOZIP): </td>
    <td>
<c:out value="${resposta.dadosEntrega.cepEntrega}"/>
</td>
</tr>
<tr>    
    <td>Código do país = </td>
    <td>(SHIPTOCOUNTRYCODE): </td>
    <td>
<c:out value="${resposta.dadosEntrega.codPaisEntrega}"/>
</td>
</tr>
<tr>    
    <td>Nome do país = </td>
    <td>(SHIPTOCOUNTRYNAME): </td>
    <td>
<c:out value="${resposta.dadosEntrega.nomePaisEntrega}"/>
</td>
</tr>
<tr>    
    <td>Status do endereço = </td>
    <td>(ADDRESSSTATUS): </td>
    <td>
<c:out value="${resposta.dadosEntrega.statusEnderecoEntrega}"/>
</td>
</tr>
</table>
<hr>
<table>
    <tr>
        </hr>
    <h2> Dados do Pagamento </h2>
</tr>
<tr>
<br>
</tr>

<tr>    
    <td>Moeda = </td>
    <td>(CURRENCYCODE): </td>
    <td>
<c:out value="${resposta.moeda}"/>
</td>
</tr>
<tr>    
    <td>Total = </td>
    <td>(AMT): </td>
    <td>
<c:out value="${resposta.total}"/>
</td>
</tr>
<tr>    
    <td>Total de itens = </td>
    <td>(ITEMAMT): </td>
    <td>
<c:out value="${resposta.dadosPagamento.totalItem}"/>
</td>
</tr>
<tr>    
    <td>Total de entrega = </td>
    <td>(SHIPPINGAMT): </td>
    <td>
<c:out value="${resposta.dadosPagamento.totalEntrega}"/>
</td>
</tr>
<tr>    
    <td>Total de manuseio = </td>
    <td>(HANDLINGAMT): </td>
    <td>
<c:out value="${resposta.dadosPagamento.totalManuseio}"/>
</td>
</tr>
<tr>    
    <td>Total de impostos = </td>
    <td>(TAXAMT): </td>
    <td>
<c:out value="${resposta.dadosPagamento.totalImposto}"/>
</td>
</tr>
<tr>    
    <td>Total de seguro = </td>
    <td>(INSURANCEAMT): </td>
    <td>
<c:out value="${resposta.dadosPagamento.totalSeguro}"/>
</td>
</tr>
<tr>    
    <td>Total de desconto na entrega = </td>
    <td>(SHIPDISCAMT): </td>
    <td>
<c:out value="${resposta.dadosPagamento.totalDescontoEntrega}"/>
</td>
</tr>
</form>
</table>
         --%>
    </body>
</html>
