<%-- 
    Document   : expcheckout_recorrente
    Created on : Jan 23, 2013, 1:04:51 PM
    Author     : aalonso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PayPal Java Testes - Express Checkout - Pagamento Recorrente</title>
    </head>
    <body>
        <script>
            function disable(num){
                document.getElementById("campos"+num).style.display="none";
            }
            function enable(num){
                document.getElementById("campos"+num).style.display="inline";
            }
            function concat(){
                var periodo;
                if(document.getElementById("BILLINGPERIOD").value == "Day"){
                    periodo = "Diário";
                }
                if(document.getElementById("BILLINGPERIOD").value == "Week"){
                    periodo = "Semanal";
                }
                if(document.getElementById("BILLINGPERIOD").value == "SemiMonth"){
                    periodo = "Mensal";
                }
                if(document.getElementById("BILLINGPERIOD").value == "Year"){
                    periodo = "Anual";
                }
            
                document.getElementById("L_BILLINGAGREEMENTDESCRIPTION0").value = document.getElementById("L_BILLINGAGREEMENTDESCRIPTION0").value +" | Valor da Assinatura: R$ "+ document.getElementById("AMT_SIG").value+" | Periodo da assinatura : "+periodo; 
            }
            
        </script>

        <h1>PayPal Java Testes - Express Checkout - Pagamento Recorrente</h1>

        <form action='<c:out value="${pageContext.servletContext.contextPath}" />/ExpressCheckoutController' method="POST">
            <table>
                <tr>
                    <td>Quer ver os parametros antes de redirecionar? </td>
                    <td>
                        <select id="NAOENVIAR_OPCREDIRECT" name="NAOENVIAR_OPCREDIRECT">
                            <option value="0">NÃO</option>
                            <option value="1">SIM</option>
                        </select>
                    </td>
                </tr> 
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
                    <td>Tipo de fluxo (USERACTION): </td>
                    <td>
                        <select id="NAOENVIAR_TIPOFLUXO" name="NAOENVIAR_TIPOFLUXO">
                            <option value="commit" selected="selected">TRADICIONAL</option>
                            <option value="shortcut">SHORTCUT</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Tipo de checkout (CMD): </td>
                    <td>
                        <select id="NAOENVIAR_TIPOCHECKOUT" name="NAOENVIAR_TIPOCHECKOUT">
                            <option value="_express-checkout" selected="selected">WEB</option>
                            <option value="_express-checkout-mobile">Mobile</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Metodo (METHOD): </td>
                    <td>
                        <input type="text" value="SetExpressCheckout" size="60" name="METHOD" id="METHOD" />
                    </td>
                </tr>
                <tr>
                    <td>Tipo de pagamento (L_BILLINGTYPE0): </td>
                    <td>
                        <input type="text" value="RecurringPayments" size="60" name="L_BILLINGTYPE0" id="L_BILLINGTYPE0" />
                    </td>
                </tr>
                <tr>
                    <td>Descrição do contrato de pagamento (L_BILLINGAGREEMENTDESCRIPTION0): </td>
                    <td>
                        <input type="text" value="Exemplo" size="60" name="L_BILLINGAGREEMENTDESCRIPTION0" id="L_BILLINGAGREEMENTDESCRIPTION0" />
                    </td>
                </tr>
                <tr>
                    <td>Versao (VERSION - Para saber a ultima versão vá a pagina paypal.com e veja no fonte da pagina os 3 primeiros digitos do campo webversion) : </td>
                    <td>
                        <input type="text" value="91.0" size="10" name="VERSION" id="VERSION" />
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
                    <td>
                        Url de retorno (RETURNURL): </td>
                    <td>
                        <input type="text" value='http://<c:out value="${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.servletContext.contextPath}" />/expcheckout_recorrente_retorno.jsp' name="RETURNURL" id="RETURNURL" size="100" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Url de cancelamento (CANCELURL): </td>
                    <td>
                        <input type="text" value='http://<c:out value="${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.servletContext.contextPath}" />/expcheckout_recorrente_retorno.jsp' name="CANCELURL" id="CANCELURL" size="100" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Moeda (CURRENCYCODE) : </td>
                    <td>
                        <input type="text" value="BRL" name="CURRENCYCODE" id="CURRENCYCODE" size="6" />
                    </td>
                </tr>
            </table>
            <hr>
            </br>
            <h2>Dados da Assinatura</h2>
            </br>
            <table>

                <tr>
                    <td>Valor da assinatura (AMT): </td>
                    <td>
                        <input type="text" value="10" size="10" name="AMT_SIG" id="AMT_SIG" />
                    </td>
                </tr>

                <tr>
                    <td>Período de pagamento (BILLINGPERIOD): </td>
                    <td>
                        <select id="BILLINGPERIOD" name="BILLINGPERIOD" >
                            <option value='Day'>Diário</option>
                            <option value='Week'>Semanal</option>
                            <option value='SemiMonth'>SemiMonth</option>
                            <option value='Year'>Anual</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Frequência de pagamento dentro do período (BILLINGFREQUENCY): </td>
                    <td>
                        <input type="text" value='' size="10" name="BILLINGFREQUENCY" id="BILLINGFREQUENCY" />
                    </td>
                </tr>
                <input type="hidden" value="recorrente" size="60" name="SOURCE" id="SOURCE" />
                <input type="hidden" value="0" name="AMT" id="AMT" />
            </table>
            </br>
            <h2>Opções Adicionais</h2>
            </br>
            <table>
                <tr>
                    <td><b>PAGAMENTO INICIAL :&nbsp;&nbsp;</b></td>
                    <td><input type="radio" id="NAOENVIAR_pagtoini" name="NAOENVIAR_pagtoini" size="60" value="on" onclick="enable(1)" onchange="enable(1)"/>Habilitado</td>
                    <td><input type="radio" id="NAOENVIAR_pagtoini" name="NAOENVIAR_pagtoini" size="60" value="off" onclick="disable(1)" onchange="disable(1)" checked/>Desabilitado</td>

                </tr>
            </table>
            </br>
            <div id="campos1" name="campos1" style="display:none">
                <table>
                    <tr>
                        <td> Valor do pagamento inicial (INITAMT):</td>
                        <td><input type="text" id="INITAMT" name="INITAMT" size="60" value=""/></td>
                    </tr>
                    <tr>
                        <td> Ação em caso de falha no pagamento inicial (FAILEDINITAMTACTION):</td>
                        <td><select id="FAILEDINITAMTACTION" name="FAILEDINITAMTACTION" >
                                <option value=''>----------------------------</option>
                                <option value='ContinueOnFailure'>ContinueOnFailure</option>
                                <option value='CancelOnFailure'>CancelOnFailure</option>
                            </select></td>
                    </tr>
                </table>
                </br>
            </div>
            <table>
                <tr>
                    <td><b>PERÍODO DE EXPERIÊNCIA :&nbsp;&nbsp;</b></td>
                    <td><input type="radio" id="NAOENVIAR_trial" name="NAOENVIAR_trial" size="60" value="on" onclick="enable(2)" onchange="enable(2)"/>Habilitado</td>
                    <td><input type="radio" id="NAOENVIAR_trial" name="NAOENVIAR_trial" size="60" value="off" onclick="disable(2)" onchange="disable(2)" checked/>Desabilitado</td>

                </tr>
            </table>
            <div id="campos2" name="campos2" style="display:none">
                </br>
                <table>
                    <tr>
                        <td> Periodicidade do período de experiência (TRIALBILLINGPERIOD):</td>
                        <td><select id="TRIALBILLINGPERIOD" name="TRIALBILLINGPERIOD" >
                                <option value=''>----------</option>
                                <option value='Day'>Diário</option>
                                <option value='Week'>Semanal</option>
                                <option value='Month'>Mensal</option>
                                <option value='Year'>Anual</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td> Número de pagamentos dentro do ciclo (TRIALBILLINGFREQUENCY):</td>
                        <td><input type="text" id="TRIALBILLINGFREQUENCY" name="TRIALBILLINGFREQUENCY" size="60" value=""/></td>
                    </tr>
                    <tr>
                        <td> Valor cobrado no período (TRIALAMT):</td>
                        <td><input type="text" id="TRIALAMT" name="TRIALAMT" size="60" value=""/></td>
                    </tr>
                    <tr>
                        <td> Ciclos de pagamento (TRIALTOTALBILLINGCYCLES):</td>
                        <td><input type="text" id="TRIALTOTALBILLINGCYCLES" name="TRIALTOTALBILLINGCYCLES" size="60" value=""/></td>
                    </tr>
                </table>
            </div>
            <hr>
            </br>
            <table>
                <tr>
                    <td colspan="2" style="vertical-align: middle; text-align: center">
                        <input type="submit" name="Submit" value="Submit" onclick="concat()"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
