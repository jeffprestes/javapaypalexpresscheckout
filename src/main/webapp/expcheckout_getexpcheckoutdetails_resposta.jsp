<%-- 
    Document   : expcheckout_getexpcheckoutdetails_resposta.jsp
    Created on : 05/06/2012, 14:36:18
    Author     : jeffprestes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PayPal Java Testes - Express Checkout - Detalhes da Transação Express Checkout - Retorno</title>
    </head>
    <body>
        <h1>PayPal Java Testes - Express Checkout - Detalhes da Transação Express Checkout - Retorno</h1>
        <table>
            <form action="/paypaljavatestes/ExpressCheckoutController" method="POST">
            <tr>
                <td>Quer executar o pagamento? </td>
                <td>
                    <select id="NAOENVIAR_EXECDOEXPRESSCHECKOUT" name="NAOENVIAR_EXECDOEXPRESSCHECKOUT">
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
                <td>Metodo (METHOD): </td>
                <td>
                    <input type="text" value="GetExpressCheckoutDetails" size="60" name="METHOD" id="METHOD" />
                </td>
            </tr>
            <tr>
                <td>Token (TOKEN): </td>
                <td>
                    <input type="text" value="" size="60" name="TOKEN" id="TOKEN" />
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
