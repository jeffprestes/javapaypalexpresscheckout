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
        <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript">    
jQuery(document).ready(function(){
	jQuery('<div class="sa_payPal_overlay" style="visibility:hidden;position:fixed; width:100%; height:100%; filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=1, StartColorStr=\'#88ffffff\', EndColorStr=\'#88ffffff\'); background: rgba(255,255,255,0.8); top:0; left:0; z-index: 999999;"><div style=" background: #FFF; background-image: linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -o-linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -moz-linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -webkit-linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -ms-linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -webkit-gradient(linear, left top,left bottom,color-stop(0.45, #FFFFFF),color-stop(0.8, #E9ECEF));display: block;margin: auto;position: fixed; margin-left:-220px; left:45%;top: 30%;text-align: center;color: #2F6395;font-family: Arial;padding: 15px;font-size: 15px;font-weight: bold;width: 530px;-webkit-box-shadow: 3px 2px 13px rgba(50, 50, 49, 0.25);box-shadow: rgba(0, 0, 0, 0.2) 0px 0px 0px 5px;border: 1px solid #CFCFCF;border-radius: 6px;"><img style="display:block;margin:0 auto 10px" src="https://www.paypalobjects.com/en_US/i/icon/icon_animated_prog_dkgy_42wx42h.gif"><h2>Aguarde alguns segundos.</h2> <p style="font-size:13px; color: #003171; font-weight:400">Estamos efetuando sua transação..</p><div style="margin:30px auto 0;"><img src="http://apps.hostkong.com/paypal_logo.png"/></div></div></div>').appendTo('body');
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
        
        <%-- INCIO DoCheckout REQUEST --%>
        <form action='<c:out value="${pageContext.servletContext.contextPath}" />/ExpressCheckoutController2' method="POST">  

            <input type="hidden" value="https://api-3t.sandbox.paypal.com/nvp" size="60" name="NAOENVIAR_ENDPOINT" id="NAOENVIAR_ENDPOINT" />
            <input type="hidden" value="troller_api1.testshop.com" size="60" name="USER" id="USER" />
            <input type="hidden" value="8PVRHA9CM62XSWVE" size="60" name="PWD" id="PWD" />
            <input type="hidden" value="AbNWZXE66qE2PAuijmsW1PWxYKOoAbo9e-Uz2zGWcQSuoGalkiw6rCK1" size="60" name="SIGNATURE" id="SIGNATURE" />
            
            <input type="hidden" value='<c:out value="${resposta.nomeItem}"/>' size="60" name="NOMEITEM" id="NOMEITEM" />
            
            <input type="hidden" value='<c:out value="${resposta.quantidade}"/>' size="60" name="ITEMQTDE" id="ITEMQTDE" />
            
            <input type="hidden" value='<c:out value="${resposta.dadosEntrega.tipoEntrega}"/>' size="60" name="ENTREGA" id="ENTREGA" />

            <input type="hidden" value='<c:out value="${resposta.dadosPagamento.totalEntrega}"/>' size="60" name="TOTALENTREGA" id="TOTALENTREGA" />
            
            <input type="hidden" value='<c:out value="${resposta.dadosPagamento.totalItem}"/>' size="60" name="TOTALITEM" id="TOTALITEM" />
            

            <input type="hidden" value="DoExpressCheckoutPayment" size="60" name="METHOD" id="METHOD" />

            <input type="hidden" value="${sessionScope.token}" size="60" name="TOKEN" id="TOKEN" />

            <input type="hidden" value="${resposta.comprador.payerId}" size="60" name="PAYERID" id="PAYERID" />

            <input type="hidden" value="SALE" size="60" name="PAYMENTREQUEST_0_PAYMENTACTION" id="PAYMENTREQUEST_0_PAYMENTACTION" />

            <input type="hidden" value="91.0" size="60" name="VERSION" id="VERSION" />

            <input type="hidden" value="${resposta.total}" size="60" name="PAYMENTREQUEST_0_AMT" id="PAYMENTREQUEST_0_AMT" />

            <input type="hidden" value="${resposta.moeda}" size="60" name="PAYMENTREQUEST_0_CURRENCYCODE" id="PAYMENTREQUEST_0_CURRENCYCODE" />
            <div id="loadingImg2" style="visibility:hidden" >
            <input type="image" src="" id="img">
            </div>
            <tr>
                <td colspan="2" style="vertical-align: middle; text-align: center">
                    
                </td>
            </tr>
        </form>
            
            <script>
                            function load(){
                               setTimeout(function() { document.getElementById("img").click();}, 10);
                            }
</script>
            <%-- FIM DoCheckout REQUEST --%>
         
    </body>
</html>
