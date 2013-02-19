<%-- 
    Document   : expcheckout_recorrente_createprofile
    Created on : Jan 23, 2013, 2:30:31 PM
    Author     : aalonso
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>PayPal Java Testes - Express Checkout Recorrente -</title>
    </head>
    <body>
        <h1>PayPal Java Testes - Express Checkout Recorrente - Create Profile</h1>
        <form name="createp" action='<c:out value="${pageContext.servletContext.contextPath}" />/ExpressCheckoutController' method="POST">  
            <table>
                <tr>
                    <td>URL do EndPoint: </td>
                    <td>
                        <select id="NAOENVIAR_ENDPOINT" name="NAOENVIAR_ENDPOINT">
                            <option value="https://api-3t.sandbox.paypal.com/nvp">Sandbox - api-3t.sandbox.paypal.com/nvp</option>
                            <option value="https://api-3t.paylpal.com/nvp">Produção - api-3t.paypal.com</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Usuario (USER): </td>
                    <td>
                        <input type="text" value="jeffprestes_api1.gmail.com" size="60" name="USER" id="USER" />
                    </td>
                </tr>
                <tr>
                    <td>Senha (PWD): </td>
                    <td>
                        <input type="text" value="3SZKBPGTTLMVQ66B" size="60" name="PWD" id="PWD" />
                    </td>
                </tr>
                <tr>
                    <td>Assinatura (SIGNATURE): </td>
                    <td>
                        <input type="text" value="ATutHe2f5sqGdXTHx0Gdsr3F4EnaAPbdeidoBxokDfl3cK.mR1XmuSHH" size="60" name="SIGNATURE" id="SIGNATURE" />
                    </td>
                </tr>
                <tr>
                    <td>Metodo (METHOD): </td>
                    <td>
                        <input type="text" value="CreateRecurringPaymentsProfile" size="60" name="METHOD" id="METHOD" />
                    </td>
                </tr>
                <tr>
                    <td>Token (TOKEN): </td>
                    <td>
                        <input type="text" value='<c:out value="${sessionScope.token}" />' size="60" name="TOKEN" id="TOKEN" />
                    </td>
                </tr>
                <tr>
                    <td>Id do Comprador (PAYERID): </td>
                    <td>
                        <input type="text" value=<%=request.getParameter("PAYERID")%> size="60" name="PAYERID" id="PAYERID" />
                    </td>
                </tr>
                <tr>
                    <td>Versão (VERSION): </td>
                    <td>
                        <input type="text" value="91.0" size="60" name="VERSION" id="VERSION" />
                    </td>
                </tr>

                <tr>
                    <td>Moeda (CURRENCYCODE): </td>
                    <td>
                        <input type="text" value=<%=request.getParameter("CURRENCYCODE")%> size="60" name="CURRENCYCODE" id="CURRENCYCODE" />
                    </td>
                <tr>
                    <td>Codigo do país (COUNTRYCODE): </td>
                    <td>
                        <input type="text" value="BR" size="60" name="COUNTRYCODE" id="COUNTRYCODE" />
                    </td>
                </tr>

                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
            </table>
            <hr>
            </br>
            <h2>Dados da Assinatura</h2>
            </br>
            <table>
                <tr>
                    <td>Descrição da assinatura (DESC): </td>
                    <td>
                        <input type="text" value='Exemplo' size="60" name="DESC" id="DESC" />
                    </td>
                </tr>
                <tr>
                    <td>Inicio da assinatura (PROFILESTARTDATE): </td>
                    <td>
                        <input type="text" value='2013-10-01T16:00:00Z' size="60" name="PROFILESTARTDATE" id="PROFILESTARTDATE" />
                    </td>
                </tr>
                <tr>
                    <td>Valor da assinatura (AMT): </td>
                    <td>
                        <input type="text" value="<c:out value='${sessionScope.AMT_SIG}'/>" size="60" name="AMT" id="AMT" />
                    </td>
                </tr>
                <tr>
                    <td>Período de pagamento (BILLINGPERIOD): </td>
                    <td>
                        <input type="text" value="<c:out value='${sessionScope.BILLINGPERIOD}'/>" size="60" name="BILLINGPERIOD" id="BILLINGPERIOD" />
                    </td>
                </tr>
                <tr>
                    <td>Frequência de pagamento dentro do período (BILLINGFREQUENCY): </td>
                    <td>
                        <input type="text" value='<c:out value="${sessionScope.BILLINGFREQUENCY}" />' size="60" name="BILLINGFREQUENCY" id="BILLINGFREQUENCY" />
                    </td>
                </tr>
                <tr>
                    <td>Máximo de tentativas de pagamento (MAXFAILEDPAYMENTS): </td>
                    <td>
                        <input type="text" value="3" size="60" name="MAXFAILEDPAYMENTS" id="MAXFAILEDPAYMENTS" />
                    </td>
                </tr>
            </table>
            <hr>
            </br>
            <h2>Opções Adicionais</h2>
            </br>
            <table>
                <tr>
                    <td> Valor do pagamento inicial (INITAMT):</td>
                    <td><input type="text" id="INITAMT" name="INITAMT" size="60" value='<c:out value="${sessionScope.INITAMT}" />'/></td>
                </tr>
                <tr>
                    <td> Ação em caso de falha no pagamento inicial (FAILEDINITAMTACTION):</td>
                    <td><input type="text" id="FAILEDINITAMTACTION" name="FAILEDINITAMTACTION" size="60" value='<c:out value="${sessionScope.FAILEDINITAMTACTION}" />'/></td>
                </tr>
                <tr>
                    <td> Periodicidade do período de experiência (TRIALBILLINGPERIOD):</td>
                    <td><input type="text" id="TRIALBILLINGPERIOD" name="TRIALBILLINGPERIOD" size="60" value='<c:out value="${sessionScope.TRIALBILLINGPERIOD}" />'/></td>
                </tr>
                <tr>
                    <td> Número de pagamentos dentro do ciclo (TRIALBILLINGFREQUENCY):</td>
                    <td><input type="text" id="TRIALBILLINGFREQUENCY" name="TRIALBILLINGFREQUENCY" size="60" value='<c:out value="${sessionScope.TRIALBILLINGFREQUENCY}" />'/></td>
                </tr>
                <tr>
                    <td> Valor cobrado no período (TRIALAMT):</td>
                    <td><input type="text" id="TRIALAMT" name="TRIALAMT" size="60" value='<c:out value="${sessionScope.TRIALAMT}" />'/></td>
                </tr>
                <tr>
                    <td> Ciclos de pagamento (TRIALTOTALBILLINGCYCLES):</td>
                    <td><input type="text" id="TRIALTOTALBILLINGCYCLES" name="TRIALTOTALBILLINGCYCLES" size="60" value='<c:out value="${sessionScope.TRIALTOTALBILLINGCYCLES}" />'/></td>
                </tr>
                
            </table>
                </br>
                    <input type="submit" id="NAOENVIAR_Submit" name="NAOENVIAR_Submit" value="CRIAR PROFILE" />
        </form>
    </body>
</html>
