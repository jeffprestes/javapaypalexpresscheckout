<%-- 
    Document   : expcheckout_recorrente
    Created on : Jan 23, 2013, 1:59:41 PM
    Author     : aalonso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PayPal Java Testes - Express Checkout Recorrente - Detalhes do Profile Recorrente</title>
    </head>
    <body>
        <h1>PayPal Java Testes - Express Checkout Recorrente - Detalhes do Profile Recorrente</h1>
        <table>
            <form action='expcheckout_recorrente_createprofile.jsp' method="POST">  
                <tr>
                <h2> Dados de Transação </h2>
                <br>
                </tr>
                <tr>
                <br>
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
                    <td>Status da Recorrência = </td>
                    <td>(STATUS): </td>
                    <td>
                <c:out value="${resposta.recorrencia.status}"/>
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
        </table>
        <hr>
        <table>
            <tr>
                </hr>
            <h2> Dados da Assinatura </h2>
        </tr>
        <tr>
        <br>
        </tr>

        <tr>    
            <td>Nome do Assinante = </td>
            <td>(SUBSCRIBERNAME): </td>
            <td>
        <c:out value="${resposta.recorrencia.subscriberName}"/>
    </td>
</tr>
<tr>    
    <td>Descrição da Assinatura = </td>
    <td>(DESC): </td>
    <td>
<c:out value="${resposta.recorrencia.desc}"/>
</td>
</tr>
<tr>    
    <td>Início da Assinatura = </td>
    <td>(PROFILESTARTDATE): </td>
    <td>
<c:out value="${resposta.recorrencia.profileStartDate}"/>
</td>
</tr>
<tr>    
    <td>Pagamento Automatico Remanescente = </td>
    <td>(AUTOBILLOUTAMT): </td>
    <td>
<c:out value="${resposta.recorrencia.autoBill}"/>
</td>
</tr>
<tr>    
    <td>Número máximo de falhas no pagamento = </td>
    <td>(MAXFAILEDPAYMENTS): </td>
    <td>
<c:out value="${resposta.recorrencia.maxFailedPayments}"/>
</td>
</tr>
<tr>    
    <td>Falhas no pagamento = </td>
    <td>(FAILEDPAYMENTCOUNT): </td>
    <td>
<c:out value="${resposta.recorrencia.failedPaymentCount}"/>
</td>
</tr>
<tr>    
    <td>Ciclos de pagamento completos = </td>
    <td>(NUMCYCLESCOMPLETED): </td>
    <td>
<c:out value="${resposta.recorrencia.numCyclesCompleted}"/>
</td>
</tr>
<tr>    
    <td>Ciclos de pagamento faltando = </td>
    <td>(NUMCYCLESREMAINING): </td>
    <td>
<c:out value="${resposta.recorrencia.numCyclesRemaining}"/>
</td>
</tr>
<tr>    
    <td>Balanço devedor = </td>
    <td>(OUTSTANDINGBALANCE): </td>
    <td>
<c:out value="${resposta.recorrencia.outStandingBalance}"/>
</td>
</tr>
<tr>    
    <td>Valor do periodo de experiência = </td>
    <td>(TRIALAMTPAID): </td>
    <td>
<c:out value="${resposta.recorrencia.trialAmtPaid}"/>
</td>
</tr>
<tr>    
    <td>Valor de Aquisição = </td>
    <td>(REGULARAMTPAID): </td>
    <td>
<c:out value="${resposta.recorrencia.regularAmtPaid}"/>
</td>
</tr>
<tr>    
    <td>Data de expiração da Assinatura = </td>
    <td>(FINALPAYMENTDUEDATE): </td>
    <td>
<c:out value="${resposta.recorrencia.finalPaymentDueDate}"/>
</td>
</tr>
<tr>    
    <td>Ciclo de pagamento da Assinatura = </td>
    <td>(BILLINGPERIOD): </td>
    <td>
<c:out value="${resposta.recorrencia.billingPeriod}"/>
</td>
</tr>
<tr>    
    <td>Ciclos totais de Assinatura = </td>
    <td>(TOTALBILLINGCYCLES): </td>
    <td>
<c:out value="${resposta.recorrencia.totalBillingCycles}"/>
</td>
</tr>
<tr>    
    <td>Valor da Assinatura = </td>
    <td>(AMT): </td>
    <td>
<c:out value="${resposta.total}"/>
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
    <td>Total de entrega = </td>
    <td>(SHIPPINGAMT): </td>
    <td>
<c:out value="${resposta.dadosPagamento.totalEntrega}"/>
</td>
</tr>
<tr>    
    <td>Total de impostos = </td>
    <td>(TAXAMT): </td>
    <td>
<c:out value="${resposta.dadosPagamento.totalImposto}"/>
</td>
</tr>
</table>
</br>
</form>
</table>
</body>
</html>
