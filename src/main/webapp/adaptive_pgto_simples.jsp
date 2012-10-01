<%-- 
    Document   : adaptive_pgto_simples
    Created on : 05/06/2012, 14:36:18
    Author     : jeffprestes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PayPal Java Testes - Adaptative - Pagamento simples</title>
    </head>
    <body>
        <h1>PayPal Java Testes - Adaptative - Pagamento simples</h1>
        <table>
            <form action="/paypaljavatestes/AdaptiveController" method="POST">
            <tr>
                <td>Assinatura : </td>
                <td>
                    <input type="text" value="ATutHe2f5sqGdXTHx0Gdsr3F4EnaAPbdeidoBxokDfl3cK.mR1XmuSHH" size="60" name="assinatura" id="assinatura" />
                </td>
            </tr>
            <tr>
                <td>Usuario : </td>
                <td>
                    <input type="text" value="jeffprestes_api1.gmail.com" name="usuario" id="usuario" size="60" />
                </td>
            </tr>
            <tr>
                <td>Senha :</td>
                <td>
                    <input type="text" value="3SZKBPGTTLMVQ66B" name="senha" id="senha" size="60" />
                </td>
            </tr>
            <tr>
                <td>Servidor : </td>
                <td>
                    <input type="text" value="svcs.sandbox.paypal.com" name="servidor" id="servidor" size="60" />
                </td>
            </tr>
            <tr>
                <td>
                    App ID : </td>
                <td>
                    <input type="text" value="APP-80W284485P519543T" name="appid" id="appid" size="60" />
                </td>
            </tr>
            <tr>
                <td>
                    Formato do Request : </td>
                <td>
                    <input type="text" value="NV" name="requestDataFormat" id="requestDataFormat" size="6" />
                </td>
            </tr>
            <tr>
                <td>
                    Formato do Response : </td>
                <td>
                    <input type="text" value="NV" name="responseDataFormat" id="responseDataFormat" size="6" />
                </td>
            </tr>
            <tr>
                <td>
                    Operação : </td>
                <td>
                    <input type="text" value="pay" name="operacao" id="operacao" size="6" />
                </td>
            </tr>
            <tr>
                <td>
                    Tipo de Operacao : </td>
                <td>
                    <input type="text" value="pay" name="tipoOperacao" id="tipoOperacao" size="6" />
                </td>
            </tr>
            <tr>
                <td>
                    Código de Moeda : </td>
                <td>
                    <input type="text" value="BRL" name="codigoMoeda" id="codigoMoeda" size="6" />
                </td>
            </tr>
            <tr>
                <td>
                    Url de retorno : </td>
                <td>
                    <input type="text" value="http://localhost:8080/paypaljavatestes/retorno.jsp" name="urlRetorno" id="urlRetorno" size="100" />
                </td>
            </tr>
            <tr>
                <td>
                    Url de cancelamento : </td>
                <td>
                    <input type="text" value="http://localhost:8080/paypaljavatestes/retorno.jsp" name="urlCancelamento" id="urlCancelamento" size="100" />
                </td>
            </tr>
            <tr>
                <td>
                    Sender (o vendedor esta fazendo um repasse)? 
                </td>
                <td>
                    <input type="text" value="" name="urlRetorno" id="sender" size="100" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <hr />
                </td>
            </tr>
            <tr>
                <td>
                    Email Recebedor 1: 
                </td>
                <td>
                    <input type="text" value="jeffprestes_api1@gmail.com" name="emailRecebedor1" id="emailRecebedor1" size="100" />
                </td>
            </tr>
            <tr>
                <td>
                    Valor Recebedor 1: 
                </td>
                <td>
                    <input type="text" value="100.00" name="valorRecebedor1" id="valorRecebedor1" size="10" />
                </td>
            </tr>
            <tr>
                <td>
                    É primário? 
                </td>
                <td>
                    <select id="ehPrimario1">
                        <option value="true" selected="true">true</option>
                        <option value="false">false</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    Email Recebedor 2: 
                </td>
                <td>
                    <input type="text" value="" name="emailRecebedor2" id="emailRecebedor2" size="100" />
                </td>
            </tr>
            <tr>
                <td>
                    Valor Recebedor 2: 
                </td>
                <td>
                    <input type="text" value="100.00" name="valorRecebedor2" id="valorRecebedor2" size="10" />
                </td>
            </tr>
            <tr>
                <td>
                    É primário? 
                </td>
                <td>
                    <select id="ehPrimario2">
                        <option value="true">true</option>
                        <option value="false" selected="true">false</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    Email Recebedor 3: 
                </td>
                <td>
                    <input type="text" value="" name="emailRecebedor3" id="emailRecebedor3" size="100" />
                </td>
            </tr>
            <tr>
                <td>
                    Valor Recebedor 3: 
                </td>
                <td>
                    <input type="text" value="100.00" name="valorRecebedor3" id="valorRecebedor3" size="10" />
                </td>
            </tr>
            <tr>
                <td>
                    É primário? 
                </td>
                <td>
                    <select id="ehPrimario3">
                        <option value="true">true</option>
                        <option value="false" selected="true">false</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2"><hr /></td>
            </tr>
            <tr>
                <td>
                    Comentario (memo): 
                </td>
                <td>
                    <input type="text" value="Teste de adaptive payment com Java" name="memo" id="memo" size="100" />
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="vertical-align: middle; text-align: center">
                    <input type="submit" name="Submit" value="Submit" />
                </td>
            </tr>
            </form>
        </table>
    </body>
</html>
