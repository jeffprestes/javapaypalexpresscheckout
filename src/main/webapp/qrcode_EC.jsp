<%-- 
    Document   : qrcode_EC
    Created on : Jan 29, 2013, 2:49:00 PM
    Author     : aalonso
--%>
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
            function changeimage(x) {
                x.src="images/"+x.id+".png";
            }
            
            function returnimage(x) {
                x.src="images/QRCODE"+x.id+".png";
            }
        </script>
        </br>
        <h4 align="center">Mobile / Produ��o</h2>
        <table align="center" >
        <tr>
            <td ><a href="https://s.paypal.me/EzyuUr"><img id="vinho1" src="images/QRCODEvinho1.png" onmouseover="changeimage(this)" onmouseout="returnimage(this)"></a></td>
            <td >&nbsp;&nbsp;&nbsp;</td>
            <td ><a href="https://s.paypal.me/nErYN3"><img id="vinho2" src="images/QRCODEvinho2.png" onmouseover="changeimage(this)" onmouseout="returnimage(this)"></a></td>
            <td >&nbsp;&nbsp;&nbsp;</td>
            <td ><a href="https://s.paypal.me/FVBFJ3"><img id="vinho3" src="images/QRCODEvinho3.png" onmouseover="changeimage(this)" onmouseout="returnimage(this)"></a></td>
        </tr>
        </table>
        </br>
        <hr>
        <h4 align="center">Mobile / Sandbox</h2>
       
    </body>
</html>
