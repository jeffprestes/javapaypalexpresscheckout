<%-- 
   Document   : expcheckout_pgto_simples.jsp
   Created on : 05/06/2012, 14:36:18
   Author     : jeffprestes
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Redirecionando...</title>
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript">    
jQuery(document).ready(function(){
	jQuery('<div class="sa_payPal_overlay" style="visibility:hidden;position:fixed; width:100%; height:100%; filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=1, StartColorStr=\'#88ffffff\', EndColorStr=\'#88ffffff\'); background: rgba(255,255,255,0.8); top:0; left:0; z-index: 999999;"><div style=" background: #FFF; background-image: linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -o-linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -moz-linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -webkit-linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -ms-linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -webkit-gradient(linear, left top,left bottom,color-stop(0.45, #FFFFFF),color-stop(0.8, #E9ECEF));display: block;margin: auto;position: fixed; margin-left:-220px; left:45%;top: 30%;text-align: center;color: #2F6395;font-family: Arial;padding: 15px;font-size: 15px;font-weight: bold;width: 530px;-webkit-box-shadow: 3px 2px 13px rgba(50, 50, 49, 0.25);box-shadow: rgba(0, 0, 0, 0.2) 0px 0px 0px 5px;border: 1px solid #CFCFCF;border-radius: 6px;"><img style="display:block;margin:0 auto 10px" src="https://www.paypalobjects.com/en_US/i/icon/icon_animated_prog_dkgy_42wx42h.gif"><h2>Aguarde alguns segundos.</h2> <p style="font-size:13px; color: #003171; font-weight:400">Você está sendo redirecionado para um ambiente seguro para finalizar seu pagamento.</p><div style="margin:30px auto 0;"><img src="http://apps.hostkong.com/paypal_logo.png"/></div></div></div>').appendTo('body');
	var payPalMac = navigator.userAgent.match(/Macintosh/) && navigator.userAgent.match(/Safari/) ? true : false

	if(payPalMac) {
		jQuery('<a href="#" class="payPal_macBtn" style="width: 128px; height:47px; position:relative; display:block; margin-top:-55px; opacity:0">Comprar</a>').appendTo('form');

		jQuery('.payPal_macBtn').click(function(e){
			e.preventDefault()
			jQuery('.sa_payPal_overlay').css('visibility', 'visible');
			setTimeout(function(){
				jQuery('form').submit();
			}, 5000);
			
		})
	}
	else {
		jQuery('input[type="image"]').click(function(){
			setTimeout(function(){
				jQuery('.sa_payPal_overlay').css('visibility', 'visible');
				return false;
			},100)
		})
	};
})
</script>
    </head>
    <body align="center" onload="load()" link="#0b0b6f" alink="#0b0b6f" vlink="#0b0b6f" style="font-family: arial, helvetica; background-color: #f5f5f5">
        <!--<h3>Você está sendo redirecionado para o ambiente seguro PayPal</h3>-->
        <!--<img src="images/paypalgif.gif"/>-->
        <table>
            <form action='<c:out value="${pageContext.servletContext.contextPath}" />/ExpressCheckoutController2' method="POST">
                <tr style="display: none;">
                <input type="hidden" value="0" size="60" name="NAOENVIAR_OPCREDIRECT" id="NAOENVIAR_OPCREDIRECT" />
                <input type="hidden" value="https://api-3t.sandbox.paypal.com/nvp" size="60" name="NAOENVIAR_ENDPOINT" id="NAOENVIAR_ENDPOINT" />
                <input type="hidden" value="_express-checkout" size="60" name="NAOENVIAR_TIPOCHECKOUT" id="NAOENVIAR_TIPOCHECKOUT" />
                <input type="hidden" value="commit" size="60" name="NAOENVIAR_TIPOFLUXO" id="NAOENVIAR_TIPOFLUXO" />
                <input type="hidden" value="SetExpressCheckout" size="60" name="METHOD" id="METHOD" />
                <input type="hidden" value="https://java-ppbrasil.rhcloud.com/images/loja_demo.jpg" size="60" name="HDRIMG" id="HDRIMG" />
                <input type="hidden" value="191964" size="60" name="HDRBORDERCOLOR" id="HDRBORDERCOLOR" />
                <input type="hidden" value="336699" size="60" name="PAYFLOWCOLOR" id="PAYFLOWCOLOR" />
                <input type="hidden" value="SALE" size="60" name="PAYMENTREQUEST_0_PAYMENTACTION" id="PAYMENTREQUEST_0_PAYMENTACTION" />
                <input type="hidden" value="91.0" size="10" name="VERSION" id="VERSION" />
                <input type="hidden" value="troller_api1.testshop.com" size="60" name="USER" id="USER" />
                <input type="hidden" value="8PVRHA9CM62XSWVE" size="60" name="PWD" id="PWD" />
                <input type="hidden" value="AbNWZXE66qE2PAuijmsW1PWxYKOoAbo9e-Uz2zGWcQSuoGalkiw6rCK1" size="60" name="SIGNATURE" id="SIGNATURE" />
                <input type="hidden" value='https://java-ppbrasil.rhcloud.com/expcheckout_auto.jsp' name="RETURNURL" id="RETURNURL" size="100" />
                <input type="hidden" value='https://java-ppbrasil.rhcloud.com/expcheckout_retorno.jsp' name="CANCELURL" id="CANCELURL" size="100" />
                <input type="hidden" value='https://java-ppbrasil.rhcloud.com/FreteServlet' name="CALLBACK" id="CALLBACK" size="100" />
                <input type="hidden" value='6' name="CALLBACKTIMEOUT" id="CALLBACKTIMEOUT" size="100" />
                <input type="hidden" value="pt_BR" name="LOCALECODE" id="LOCALECODE" size="6" />
                <input type="hidden" value="BRL" name="PAYMENTREQUEST_0_CURRENCYCODE" id="PAYMENTREQUEST_0_CURRENCYCODE" size="100" />
                <input type="hidden" value="192.00" name="PAYMENTREQUEST_0_AMT" id="PAYMENTREQUEST_0_AMT" size="100" />
                <input type="hidden" value="188.00" name="PAYMENTREQUEST_0_ITEMAMT" id="PAYMENTREQUEST_0_ITEMAMT" size="100" />
                <input type="hidden" value="250.00" name="MAXAMT" id="MAXAMT" size="100" />
                <input type="hidden" value="4.00" name="PAYMENTREQUEST_0_SHIPPINGAMT" id="PAYMENTREQUEST_0_SHIPPINGAMT" size="100" />
                <input type="hidden" value="false" name="PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED" id="PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED" size="100" />
                <input type="hidden" value="Celular ZTE R236" name="L_PAYMENTREQUEST_0_NAME0" id="L_PAYMENTREQUEST_0_NAME0" size="100" />
                <input type="hidden" value="Celular Desbloqueado Dual Chip R236 Preto ZTE" name="L_PAYMENTREQUEST_0_DESC0" id="L_PAYMENTREQUEST_0_DESC0" size="100" />
                <input type="hidden" value="188.00" name="L_PAYMENTREQUEST_0_AMT0" id="L_PAYMENTREQUEST_0_AMT0" size="100" />
                <input type="hidden" value="0" name="L_PAYMENTREQUEST_0_NUMBER0" id="L_PAYMENTREQUEST_0_NUMBER0" size="100" />
                <input type="hidden" value="1" name="L_PAYMENTREQUEST_0_QTY0" id="L_PAYMENTREQUEST_0_QTY0" size="100" />
                <input type="hidden" value="kgs" name="L_PAYMENTREQUEST_0_ITEMWEIGHTUNIT0" id="L_PAYMENTREQUEST_0_ITEMWEIGHTUNIT0" size="100" />
                <input type="hidden" value="0.8" name="L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE0" id="L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE0" size="100" />
                <input type="hidden" value="6" name="L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE0" id="L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE0" size="100" />
                <input type="hidden" value="15" name="L_PAYMENTREQUEST_0_ITEMWIDTHVALUE0" id="L_PAYMENTREQUEST_0_ITEMWIDTHVALUE0" size="100" />
                <input type="hidden" value="19" name="L_PAYMENTREQUEST_0_ITEMLENGTHVALUE0" id="L_PAYMENTREQUEST_0_ITEMLENGTHVALUE0" size="100" />
                <input type="hidden" value="true" name="L_SHIPPINGOPTIONISDEFAULT0" id="L_SHIPPINGOPTIONISDEFAULT0" size="100" />
                <input type="hidden" value="Padrao 1" name="L_SHIPPINGOPTIONNAME0" id="L_SHIPPINGOPTIONNAME0" size="100" />
                <input type="hidden" value="4.00" name="L_SHIPPINGOPTIONAMOUNT0" id="L_SHIPPINGOPTIONAMOUNT0" size="100" />
                <input type="image" src="images/paypalgi.gif" id="img"/>
                </tr>
                <tr>
                    <td colspan="2" style="vertical-align: middle; text-align: center">
                    </td>
                </tr>
            </form>
            <script>
                function load(){
                    document.getElementById("img").click();
                    //document.forms[0].submit(); 
                }
            </script>
        </table>
    </body>
</html>
