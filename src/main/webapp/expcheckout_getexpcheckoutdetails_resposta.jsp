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
            <h2> Dados de Transação </h2>
            <br>
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
                <td>Log de Tempo (TIMESTAMP): </td>
                <td>
                    <c:out value="${resposta.timestamp}"/>
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
            
            <br>
            </hr>
            <h2> Dados do Comprador </h2>
            <br>
            
            <tr>    
                <td>E-mail do Comprador (EMAIL): </td>
                <td>
                    <c:out value="${resposta.comprador.emailComprador}"/>
                </td>
            </tr>
            <tr>    
                <td>ID do Comprador (PAYERID): </td>
                <td>
                    <c:out value="${resposta.comprador.payerId}"/>
                </td>
            </tr>
            <tr>    
                <td>Status do Comprador (PAYERSTATUS): </td>
                <td>
                    <c:out value="${resposta.comprador.statusPagador}"/>
                </td>
            </tr>
            <tr>    
                <td>Primeiro nome do Comprador (FIRSTNAME): </td>
                <td>
                    <c:out value="${resposta.comprador.primeiroNome}"/>
                </td>
            </tr>
            <tr>    
                <td>Ultimo nome do Comprador (LASTNAME): </td>
                <td>
                    <c:out value="${resposta.comprador.ultimoNome}"/>
                </td>
            </tr>
            <tr>    
                <td>Pais do Comprador (COUNTRYCODE): </td>
                <td>
                    <c:out value="${resposta.comprador.paisComprador}"/>
                </td>
            </tr>
            <tr>    
                <td>Tipo de documento de identificação (TAXIDTYPE): </td>
                <td>
                    <c:out value="${resposta.comprador.tipoRegistroReceita}"/>
                </td>
            </tr>
            <tr>    
                <td>Número do documento identificação (TAXID): </td>
                <td>
                    <c:out value="${resposta.comprador.nroRegistroReceita}"/>
                </td>
            </tr>
            
            <br>
            </hr>
            <h2> Dados de Entrega </h2>
            <br>
            
            <tr>    
                <td>Nome do endereço de entrega (SHIPTONAME): </td>
                <td>
                    <c:out value="${resposta.dadosEntrega.nomeEntrega}"/>
                </td>
            </tr>
            <tr>    
                <td>Endereço de entrega (SHIPTOSTREET): </td>
                <td>
                    <c:out value="${resposta.dadosEntrega.enderecoEntrega}"/>
                </td>
            </tr>
            <tr>    
                <td>Complemento (SHIPTOSTREET2): </td>
                <td>
                    <c:out value="${resposta.dadosEntrega.complementoEnderecoEntrega}"/>
                </td>
            </tr>
            <tr>    
                <td>Cidade (SHIPTOCITY): </td>
                <td>
                    <c:out value="${resposta.dadosEntrega.cidadeEntrega}"/>
                </td>
            </tr>
            <tr>    
                <td>Estado (SHIPTOSTATE): </td>
                <td>
                    <c:out value="${resposta.dadosEntrega.estadoEntrega}"/>
                </td>
            </tr>
            <tr>    
                <td>CEP (SHIPTOZIP): </td>
                <td>
                    <c:out value="${resposta.dadosEntrega.cepEntrega}"/>
                </td>
            </tr>
            <tr>    
                <td>Código do país (SHIPTOCOUNTRYCODE): </td>
                <td>
                    <c:out value="${resposta.dadosEntrega.codPaisEntrega}"/>
                </td>
            </tr>
            <tr>    
                <td>Nome do país (SHIPTOCOUNTRYNAME): </td>
                <td>
                    <c:out value="${resposta.dadosEntrega.nomePaisEntrega}"/>
                </td>
            </tr>
            <tr>    
                <td>Status do endereço (ADDRESSSTATUS): </td>
                <td>
                    <c:out value="${resposta.dadosEntrega.statusEnderecoEntrega}"/>
                </td>
            </tr>
            
            <br>
            </hr>
            <h2> Dados do Pagamento </h2>
            <br>
            
            <tr>    
                <td>Moeda (CURRENCYCODE): </td>
                <td>
                    <c:out value="${resposta.moeda}"/>
                </td>
            </tr>
            <tr>    
                <td>Total (AMT): </td>
                <td>
                    <c:out value="${resposta.total}"/>
                </td>
            </tr>
            <tr>    
                <td>Total de itens (ITEMAMT): </td>
                <td>
                    <c:out value="${resposta.dadosPagamento.totalItem}"/>
                </td>
            </tr>
            <tr>    
                <td>Total de entrega (SHIPPINGAMT): </td>
                <td>
                    <c:out value="${resposta.dadosPagamento.totalEntrega}"/>
                </td>
            </tr>
            <tr>    
                <td>Total de manuseio (HANDLINGAMT): </td>
                <td>
                    <c:out value="${resposta.dadosPagamento.totalManuseio}"/>
                </td>
            </tr>
            <tr>    
                <td>Total de impostos (TAXAMT): </td>
                <td>
                    <c:out value="${resposta.dadosPagamento.totalImposto}"/>
                </td>
            </tr>
            <tr>    
                <td>Total de seguro (INSURANCEAMT): </td>
                <td>
                    <c:out value="${resposta.dadosPagamento.totalSeguro}"/>
                </td>
            </tr>
            <tr>    
                <td>Total de desconto na entrega (SHIPDISCAMT): </td>
                <td>
                    <c:out value="${resposta.dadosPagamento.totalDescontoEntrega}"/>
                </td>
            </tr>
            </form>
        </table>
    </body>
</html>
