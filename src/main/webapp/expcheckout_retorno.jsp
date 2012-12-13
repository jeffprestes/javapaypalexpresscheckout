<%-- 
    Document   : expcheckout_retorno
    Created on : Sep 3, 2012, 5:56:17 PM
    Author     : jprestes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Retorno do PayPal após pagamento com sucesso</title>
    </head>
    <body>
        <h1>Retorno do PayPal após pagamento com sucesso</h1>
        <h2>Token: <b><c:out value="${sessionScope.token}" /></b></h2>
        <br />
        <h2>Ir para:</h2>
        <div style="text-align: center"><a href="expcheckout_getexpcheckoutdetails_request.jsp">Formulário GetExpressCheckoutDetails</a></div>
    </body>
</html>
