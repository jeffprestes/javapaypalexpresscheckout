<%-- 
    Document   : expcheckout_recorrente
    Created on : Jan 23, 2013, 1:56:12 PM
    Author     : aalonso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PayPal Java Testes - Express Checkout Recorrente - Detalhes da Transação</title>
    </head>
    <body>
        <h1>PayPal Java Testes - Express Checkout Recorrente - Detalhes da Transação</h1>
        <table>
            <form action='<c:out value="${pageContext.servletContext.contextPath}" />/ExpressCheckoutController' method="POST">  
                <tr>
                    <td>URL do EndPoint: </td>
                    <td>
                        <select id="NAOENVIAR_ENDPOINT" name="NAOENVIAR_ENDPOINT">
                            <option value="https://api-3t.sandbox.paypal.com/nvp">Sandbox - api-3t.sandbox.paypal.com/nvp</option>
                            <option value="https://api-3t.paylpal.com/nvp">Produção - api-3t.paypal.com</option>
                        </select>
                    </td>
                </tr>    
<input type="hidden" value="recorrente" size="60" name="SOURCE" id="SOURCE" />
                <tr>
                    <td>Metodo (METHOD): </td>
                    <td>
                        <input type="text" value="GetExpressCheckoutDetails" size="60" name="METHOD" id="METHOD" />
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
                    <td>Versao (VERSION - Para saber a ultima versão vá a pagina paypal.com e veja no fonte da pagina os 3 primeiros digitos do campo webversion) : </td>
                    <td>
                        <input type="text" value="91.0" size="10" name="VERSION" id="VERSION" />
                    </td>
                </tr>
                <tr>
                    <td>Token (TOKEN): </td>
                    <td>
                        <input type="text" value='<c:out value="${sessionScope.token}" />' size="60" name="TOKEN" id="TOKEN" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" style="vertical-align: middle; text-align: center">
                        <input type="submit" id="NAOENVIAR_Submit" name="NAOENVIAR_Submit" value="Submit" />
                    </td>
                </tr>
            </form>
        </table>
    </body>
</html>
