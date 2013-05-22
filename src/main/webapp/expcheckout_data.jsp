<%-- 
    Document   : expcheckout_data
    Created on : Jan 16, 2013, 12:31:58 PM
    Author     : aalonso
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Dados da transa&ccedil;&atilde;o</title>
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript">    
jQuery(document).ready(function(){
	jQuery('<div class="sa_payPal_overlay" style="visibility:hidden;position:fixed; width:100%; height:100%; filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=1, StartColorStr=\'#88ffffff\', EndColorStr=\'#88ffffff\'); background: rgba(255,255,255,0.8); top:0; left:0; z-index: 999999;"><div style=" background: #FFF; background-image: linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -o-linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -moz-linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -webkit-linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -ms-linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -webkit-gradient(linear, left top,left bottom,color-stop(0.45, #FFFFFF),color-stop(0.8, #E9ECEF));display: block;margin: auto;position: fixed; margin-left:-220px; left:45%;top: 30%;text-align: center;color: #2F6395;font-family: Arial;padding: 15px;font-size: 15px;font-weight: bold;width: 530px;-webkit-box-shadow: 3px 2px 13px rgba(50, 50, 49, 0.25);box-shadow: rgba(0, 0, 0, 0.2) 0px 0px 0px 5px;border: 1px solid #CFCFCF;border-radius: 6px;"><img style="display:block;margin:0 auto 10px" src="https://www.paypalobjects.com/en_US/i/icon/icon_animated_prog_dkgy_42wx42h.gif"><h2>Seu transação foi efetuada com sucesso.</h2> <p style="font-size:13px; color: #003171; font-weight:400">você está sendo redirecionado.</p><div style="margin:30px auto 0;"><img src="http://apps.hostkong.com/paypal_logo.png"/></div></div></div>').appendTo('body');
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
        <%-- INICIO dos DADOS --%>
        <table>
            <form action="DEMOretorno.jsp" method="POST">   

                <input type="hidden" value='<c:out value="${resposta.token}"/>' name="TOKEN" id="TOKEN">

                <input type="hidden" value='<c:out value="${resposta.statusCheckout}"/>' name="STATUS" id="STATUS">

                <input type="hidden" value='<c:out value="${resposta.timestamp}"/>' name="TIMESTAMP" id="TIMESTAMP">

                <input type="hidden" value='<c:out value="${resposta.correlationId}"/>' name="CORRELATIONID" id="CORRELATIONID">

                <input type="hidden" value='<c:out value="${resposta.transactionId}"/>' name="TRANSACTIONID" id="TRANSACTIONID">

                <input type="hidden" value='<c:out value="${resposta.ack}"/>' name="ACK" id="ACK">

                <input type="hidden" value='<c:out value="${resposta.versao}"/>' name="VERSAO" id="VERSAO">

                <input type="hidden" value='<c:out value="${resposta.cabecalho.build}"/>' name="BUILD" id="BUILD">

                <input type="hidden" value='<c:out value="${resposta.comprador.emailComprador}"/>' name="EMAILCOMPRADOR" id="EMAILCOMPRADOR">

                <input type="hidden" value='<c:out value="${resposta.comprador.payerId}"/>' name="PAYERID" id="PAYERID">

                <input type="hidden" value='<c:out value="${resposta.comprador.statusPagador}"/>' name="STATUSPAGADOR" id="STATUSPAGADOR">

                <input type="hidden" value='<c:out value="${resposta.comprador.primeiroNome}"/>' name="PRIMEIRONOME" id="PRIMEIRONOME">

                <input type="hidden" value='<c:out value="${resposta.comprador.ultimoNome}"/>' name="ULTIMONOME" id="ULTIMONOME">

                <input type="hidden" value='<c:out value="${resposta.comprador.paisComprador}"/>' name="PAISCOMPRADOR" id="PAISCOMPRADOR">

                <input type="hidden" value='<c:out value="${resposta.comprador.tipoRegistroReceita}"/>' name="IDTYPE" id="IDTYPE">

                <input type="hidden" value='<c:out value="${resposta.comprador.nroRegistroReceita}"/>' name="IDNUMBER" id="IDNUMBER">

                <input type="hidden" value='<c:out value="${resposta.dadosEntrega.nomeEntrega}"/>' name="NOMEENTREGA" id="NOMEENTREGA">

                <input type="hidden" value='<c:out value="${resposta.dadosEntrega.enderecoEntrega}"/>' name="ENDERECO" id="ENDERECO">

                <input type="hidden" value='<c:out value="${resposta.dadosEntrega.complementoEnderecoEntrega}"/>' name="ENDERECO2" id="ENDERECO2">

                <input type="hidden" value='<c:out value="${resposta.dadosEntrega.cidadeEntrega}"/>' name="CIDADE">

                <input type="hidden" value='<c:out value="${resposta.dadosEntrega.estadoEntrega}"/>' name="ESTADO" id="ESTADO">

                <input type="hidden" value='<c:out value="${resposta.dadosEntrega.cepEntrega}"/>' name="CEP" id="CEP">

                <input type="hidden" value='<c:out value="${resposta.dadosEntrega.codPaisEntrega}"/>' name="CODPAIS" id="CODPAIS">

                <input type="hidden" value='<c:out value="${resposta.dadosEntrega.nomePaisEntrega}"/>' name="PAIS" id="PAIS">

                <input type="hidden" value='<c:out value="${resposta.dadosEntrega.statusEnderecoEntrega}"/>' name="STATUSENDERECO" id="STATUSENDERECO">

                <input type="hidden" value='<c:out value="${resposta.moeda}"/>' name="MOEDA" id="MOEDA">

                <input type="hidden" value='<c:out value="${resposta.total}"/>' name="TOTAL" id="TOTAL">
                
                <input type="hidden" value=<%= request.getParameter("NOMEITEM")%> size="60" name="NOMEITEM" id="NOMEITEM" />
            
                <input type="hidden" value=<%= request.getParameter("ITEMQTDE")%> size="60" name="ITEMQTDE" id="ITEMQTDE" />
                
                <input type="hidden" value=<%= request.getParameter("TOTALITEM")%> size="60" name="TOTALITEM" id="TOTALITEM" />
                
                <input type="hidden" value=<%= request.getParameter("ENTREGA")%> size="60" name="ENTREGA" id="ENTREGA" />
                
                <input type="hidden" value=<%= request.getParameter("TOTALENTREGA")%> size="60" name="TOTALENTREGA" id="TOTALENTREGA" />

                <input type="hidden" value='<c:out value="${resposta.dadosPagamento.totalManuseio}"/>' name="TOTALMANUSEIO" id="TOTALMANUSEIO">

                <input type="hidden" value='<c:out value="${resposta.dadosPagamento.totalImposto}"/>' name="TOTALIMPOSTO" id="TOTALIMPOSTO">

                <input type="hidden" value='<c:out value="${resposta.dadosPagamento.totalSeguro}"/>' name="TOTALSEGURO" id="TOTALSEGURO">
                
                <input type="hidden" value='<c:out value="${resposta.comprador.telefone}"/>' name="TELEFONE" id="TELEFONE">
                
                <input type="hidden" value="SS342555328BR" name="NAOENVIAR_TRACKING" id="NAOENVIAR_TRACKING" />

                <div id="loadingImg2" style="visibility:hidden" >
            <input type="image" src="" id="img">
            </div>
            </form>
            <script>
                            function load(){
                               setTimeout(function() { document.getElementById("img").click();}, 10);
                            }
</script>
        </table>
    </body>
</html>
