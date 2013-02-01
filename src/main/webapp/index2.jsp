<%-- 
    Document   : index2.jsp
    Created on : Feb 1, 2013, 1:03:13 PM
    Author     : aalonso
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head><title>Ambiente de Demos PayPal</title></head>
<body link="#0b0b6f" alink="#0b0b6f" vlink="#0b0b6f" style="font-family: arial, helvetica; background-color: #f1f1f1; margin: auto 0">

<div style="width:100%;"> 
</br>
</br>
<h1 align="center">Acesso Restrito</h1>
</br>
<div style="float:left; width:54%;">
<!--Left  Column-->
<form action='<c:out value="${pageContext.servletContext.contextPath}" />/LoginVerifier' method="POST">
<table class="tab1" border="0" cellpadding="0" cellspacing="0" style="margin-top:2px; float:right;">
<tr>
<td><b>LOGIN :  </b></td>
<td><input type="text" value="" id="login" name="login"/>&nbsp;&nbsp;</td>
</tr>
<tr>
<td><b>PASSWORD : &nbsp;</b></td>
<td><input type="text" value="" id="password" name="password"/>&nbsp;&nbsp;</td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="&nbsp;&nbsp;&nbsp;&nbsp;Entrar&nbsp;&nbsp;&nbsp;&nbsp;"></td>
</tr>
</table>
</form>
<c:out value="${login.login}">
<br />
</div>
<div style="float:right; width:46%; ">
<img src="https://www.paypalobjects.com/webstatic/mktg/logo/bdg_secured_by_pp_2line.png" border="0" alt="Secured by PayPal" style="float:left;">
<br /> 
</div>

</body>
</html>
