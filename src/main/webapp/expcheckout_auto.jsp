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
        <title>Efetuando Transa&ccedil;&atilde;o</title>
    </head>
    <body onload="load()" link="#0b0b6f" alink="#0b0b6f" vlink="#0b0b6f" style="font-family: arial, helvetica; background-color: #f5f5f5" align="center">

        <h3 align="center">Efetuando Transa&ccedil;&atilde;o .</h3>
        <img src="images/paypalgif.gif"/>


        <%-- INICIO GetDetails REQUEST --%>
        <form action='<c:out value="${pageContext.servletContext.contextPath}" />/ExpressCheckoutController2' method="POST">
            <input type="hidden" value="https://api-3t.sandbox.paypal.com/nvp" size="60" name="NAOENVIAR_ENDPOINT" id="NAOENVIAR_ENDPOINT" />
            <input type="hidden" value="0" size="60" name="NAOENVIAR_OPCREDIRECT" id="NAOENVIAR_OPCREDIRECT" />
            <input type="hidden" value="GetExpressCheckoutDetails" size="60" name="METHOD" id="METHOD" />
            <input type="hidden" value="" size="60" name="SENDPOINT" id="SENDPOINT" />
            <input type="hidden" value="troller_api1.testshop.com" size="60" name="USER" id="USER" />
            <input type="hidden" value="8PVRHA9CM62XSWVE" size="60" name="PWD" id="PWD" />
            <input type="hidden" value="AbNWZXE66qE2PAuijmsW1PWxYKOoAbo9e-Uz2zGWcQSuoGalkiw6rCK1" size="60" name="SIGNATURE" id="SIGNATURE" />
            <input type="hidden" value="91.0" size="10" name="VERSION" id="VERSION" />
            <input type="hidden" value='<c:out value="${sessionScope.token}" />' size="60" name="TOKEN" id="TOKEN" />
            <tr>
                <td colspan="2" style="vertical-align: middle; text-align: center"></td>
            </tr>
            <div id="loadingImg" style="visibility:hidden" >
                <img src="images/paypalgif.gif" border=0/>
            </div>
        </form>

        <script>
                            function load(){
                               document.forms[0].submit(); 
                            }
</script>
        <%-- FIM GetDetails REQUEST --%>

    </body>
</html>
