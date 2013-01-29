<%-- 
    Document   : qrcode_EC
    Created on : Jan 29, 2013, 2:49:00 PM
    Author     : aalonso
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Express Checkout via QRCODE</title>
    </head>
    <body link="#0b0b6f" alink="#0b0b6f" vlink="#0b0b6f" style="font-family: arial, helvetica; background-color: #f6f6f6" >
        <h2 align="center">Exemplos de QRCODE para Express Checkout mobile</h2>
        </br>
        <script type="text/javascript">
            function changeimage(id)
            {
                if(id == vinho1){
                id.src="images/vinhoQR1.png"
            }else if(id == vinho2){
                id.src="images/vinhoQR2.png"
            }else{
                id.src="images/vinhoQR3.png"
            }
        }
            
             function returnimage(id){
                if(id == vinho1){
                id.src="images/QRCODE1.png"
            }else if(id == vinho2){
                id.src="images/QRCODE2.png"
            }else{
                id.src="images/QRCODE3.png"
            }
            }
        </script>
        <table align="center" >
        <tr>
            <td ><a href="https://s.paypal.me/EzyuUr"><img id="vinho1" src="images/QRCODE1.png" onmouseover="changeimage(vinho1)" onmouseout="returnimage(vinho1)"/></a></td>
            <td >&nbsp;&nbsp;&nbsp;</td>
            <td ><a href="https://s.paypal.me/nErYN3"><img id="vinho2" src="images/QRCODE2.png" onmouseover="changeimage(vinho2)" onmouseout="returnimage(vinho2)"/></a></td>
            <td >&nbsp;&nbsp;&nbsp;</td>
            <td ><a href="https://s.paypal.me/FVBFJ3"><img id="vinho3" src="images/QRCODE3.png" onmouseover="changeimage(vinho3)" onmouseout="returnimage(vinho3)"/></a></td>
        </tr>
        </table>
    </body>
</html>
