<%-- 
    Document   : expcheckout_auto
    Created on : Jan 15, 2013, 3:52:21 PM
    Author     : aalonso
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Efetuando Transacao</title>
    </head>
    <body link="#0b0b6f" alink="#0b0b6f" vlink="#0b0b6f" style="font-family: arial, helvetica; background-color: #f1f1f1">
        <h3 align="center">Efetuando Transacao . . .</h3>
        <img src="images/paypalgif.gif"/>
        
            <%-- INICIO GetDetails REQUEST --%>
        <form action='<c:out value="${pageContext.servletContext.contextPath}" />/ExpressCheckoutController2' method="POST">
            <input type="hidden" value="https://api-3t.sandbox.paypal.com/nvp" size="60" name="NAOENVIAR_ENDPOINT" id="NAOENVIAR_ENDPOINT" />
            <input type="hidden" value="0" size="60" name="NAOENVIAR_OPCREDIRECT" id="NAOENVIAR_OPCREDIRECT" />
            <input type="hidden" value=<%= request.getParameter("NOMEITEM")%> size="60" name="NOMEITEM" id="NOMEITEM" />
            <input type="hidden" value=<%= request.getParameter("ITEMQTDE")%> size="60" name="ITEMQTDE" id="ITEMQTDE" />
            <input type="hidden" value=<%= request.getParameter("ENTREGA")%> size="60" name="ENTREGA" id="ENTREGA" />
            <input type="hidden" value=<%= request.getParameter("TOTALENTREGA")%> size="60" name="TOTALENTREGA" id="TOTALENTREGA" />
            <input type="hidden" value=<%= request.getParameter("TOTALITEM")%> size="60" name="TOTALITEM" id="TOTALITEM" />
            <input type="hidden" value="GetExpressCheckoutDetails" size="60" name="METHOD" id="METHOD" />
            <input type="hidden" value="final" size="60" name="SENDPOINT" id="SENDPOINT" />
            <input type="hidden" value="jeffprestes_api1.gmail.com" size="60" name="USER" id="USER" />
            <input type="hidden" value="3SZKBPGTTLMVQ66B" size="60" name="PWD" id="PWD" />
            <input type="hidden" value="ATutHe2f5sqGdXTHx0Gdsr3F4EnaAPbdeidoBxokDfl3cK.mR1XmuSHH" size="60" name="SIGNATURE" id="SIGNATURE" />
            <input type="hidden" value="91.0" size="10" name="VERSION" id="VERSION" />
            <input type="hidden" value='<c:out value="${sessionScope.token}" />' size="60" name="TOKEN" id="TOKEN" />
            
            <tr>
                <td colspan="2" style="vertical-align: middle; text-align: center">
                </td>
            </tr>
        </form>
            <script> document.forms[0].submit(); </script>
        
    </body>
</html>
