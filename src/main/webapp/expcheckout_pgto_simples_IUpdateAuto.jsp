<%-- 
    Document   : DEMOlogin
    Created on : Jan 17, 2013, 12:28:58 PM
    Author     : aalonso
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt" lang="pt">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <head>

        <!-- Inicio do Head -->

        <TITLE>Eletrônicos, Informática, Games  e muito mais! Em até 12x - Test Shop</TITLE>
        
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript">    
jQuery(document).ready(function(){
    alert("Teste 2");
	jQuery('<div class="sa_payPal_overlay" style="visibility:hidden;position:fixed; width:100%; height:100%; filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=1, StartColorStr=\'#88ffffff\', EndColorStr=\'#88ffffff\'); background: rgba(255,255,255,0.8); top:0; left:0; z-index: 999999;"><div style=" background: #FFF; background-image: linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -o-linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -moz-linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -webkit-linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -ms-linear-gradient(top, #FFFFFF 45%, #E9ECEF 80%);background-image: -webkit-gradient(linear, left top,left bottom,color-stop(0.45, #FFFFFF),color-stop(0.8, #E9ECEF));display: block;margin: auto;position: fixed; margin-left:-220px; left:45%;top: 30%;text-align: center;color: #2F6395;font-family: Arial;padding: 15px;font-size: 15px;font-weight: bold;width: 530px;-webkit-box-shadow: 3px 2px 13px rgba(50, 50, 49, 0.25);box-shadow: rgba(0, 0, 0, 0.2) 0px 0px 0px 5px;border: 1px solid #CFCFCF;border-radius: 6px;"><img style="display:block;margin:0 auto 10px" src="https://www.paypalobjects.com/en_US/i/icon/icon_animated_prog_dkgy_42wx42h.gif"><br/><h2><p style="font-size:16px; color: #003171;"><b>Aguarde alguns segundos.</b></p></h2> <p style="font-size:13px; color: #003171; font-weight:400"><br/>Você está sendo redirecionado para um ambiente seguro para finalizar seu pagamento.</p><div style="margin:30px auto 0;"><img src="http://apps.hostkong.com/paypal_logo.png"/></div></div></div>').appendTo('body');
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
                    alert("Teste 3");
			setTimeout(function(){
				jQuery('.sa_payPal_overlay').css('visibility', 'visible');
				return false;
			},100)
		})
	};
})
</script>

        <script type="text/javascript"> 
            //<![CDATA[[ 
            $BTB={s:12918}; 
            $BTB.jsh="btbuckets.com/bt.js"; 
            //]]> 
        </script> 
        <script type="text/javascript"> 
            $BTB.jshost = (document.location.protocol == "https:")?"https://ssl.":"http://static.";
            document.write(unescape("%3Cscript src='" + $BTB.jshost + $BTB.jsh + "' type='text/javascript'%3E%3C/script%3E"));   
        </script>    

        <!-- Crazy Egg -->
        <script type="text/javascript">
            setTimeout(function(){var a=document.createElement("script");
                var b=document.getElementsByTagName('script')[0];
                a.src=document.location.protocol+"//dnn506yrbagrg.cloudfront.net/pages/scripts/0010/8714.js?"+Math.floor(new Date().getTime()/3600000);
                a.async=true;a.type="text/javascript";b.parentNode.insertBefore(a,b)}, 1);
        </script> 
        <!-- Fim Crazy Egg -->  


        <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"/>

        <meta name="description" content="Compre no MegaMamute EletrÃ´nicos, InformÃ¡tica, EletrodomÃ©sticos, Games, Celulares e Smartphones. Tudo em atÃ© 12x ou 7% de desconto Ã  vista. Confira!" />
        <meta name="keywords" content="site de compras
              loja virtual 
              informÃ¡tica
              produtos de informÃ¡rica
              eletrÃ´nicos
              computador
              loja de informatica online
              loja de informatica" />
        <meta name="parcodigo" content="0" />

        <meta name="copyright" content="Loja Virtual Ikeda" />
        <meta name="author" content="Ikeda - http://lojavirtual.ikeda.com.br/" />
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <meta name="MSSmartTagsPreventParsing" content="TRUE" />

        <meta name="robots" content="INDEX, FOLLOW" />

        <meta http-equiv="pragma" content="no-cache" />
        <meta http-equiv="cache-control" content="no-cache" />
        <meta http-equiv="expires" content="Fri, 13 Jul 2001 00:00:01 GMT" />
        <meta name="google-site-verification" content="A7VMWE3s79VxaYXUPOucfFPl1lASf5TGRJETc3YvStM" />

        <link rel="shortcut icon" href="images/faviconTS.ico" />
        <link rel="stylesheet" type="text/css" href="https://www.megamamute.com.br/locales/global/css/reset.css" media="all" />
        <link rel="stylesheet" type="text/css" href="https://www.megamamute.com.br/includes/minify.aspx?main.css" media="screen" />




        <link rel="stylesheet" type="text/css" href="https://www.megamamute.com.br/includes/minify.aspx?jcarousel.css" media="screen" />

        <script type="text/javascript" src="https://www.megamamute.com.br/script/jquery-1.4.2.min.js"></script>

        <script type="text/javascript">
            jQuery.noConflict();
            // Code that uses other library's $ can follow here.
        </script>    



        <script type="text/javascript" charset="iso-8859-1" src="https://www.megamamute.com.br/includes/minify.aspx?main.js|flash.js|functions.js"></script>
        <script type="text/javascript" charset="iso-8859-1" src="https://www.megamamute.com.br/script/funcoes.js?v=39"></script>
        <script type="text/javascript" charset="iso-8859-1" src="https://www.megamamute.com.br/script/dhtml.js"></script>
        <script type="text/javascript" charset="iso-8859-1" src="https://www.megamamute.com.br/script/swfobject.js"></script>
        <script type="text/javascript" charset="iso-8859-1" src="https://www.megamamute.com.br/js/jnav.js"></script>
        <script type="text/javascript" charset="iso-8859-1" src="https://www.megamamute.com.br/js/jquery.cookie.js"></script>
        <script type="text/javascript" charset="iso-8859-1" src="https://www.megamamute.com.br/js/loader.js"></script>
        <script type="text/javascript" charset="iso-8859-1" src="https://www.megamamute.com.br/js/chaordic.setup.js"></script>


        <!--<script type="text/javascript">
        jQuery(function(){
            jQuery(".pop-chat").fancybox({ height:400, scrolling:'no' });            
        });
    </script>-->

        <meta http-equiv="imagetoolbar" content="no" />

        <META NAME="itemName" CONTENT="EletrÃ´nicos, InformÃ¡tica, Games  e muito mais! Em atÃ© 12x">
            <META NAME="itemId" CONTENT="">

                <script type="text/javascript" charset="iso-8859-1" src="https://www.megamamute.com.br/script/allinOptin719.js"></script>

                <meta Name="msnbot" CONTENT="NOODP"></head>
                    <div id="head_Googleanalytics1_pnlGoogle" name="pnlGoogle">



                        <!-- Google Analytics Begin Code -->  
                        <script type="text/javascript">      
                            var btbucketsGA = $BTB.getAllUserBuckets().join("-"); 
                            var _gaq = _gaq || []; 
      
                            _gaq.push(['_setAccount', 'UA-5130306-1']);
                            _gaq.push(['_setDomainName', 'megamamute.com.br']); 
                            _gaq.push(['_setCustomVar',1,'BTBuckets',btbucketsGA,1]), 
                            _gaq.push(['_trackPageview']); 
                            _gaq.push(['_trackPageLoadTime']);
     
                            (function() { 
                                var ga = document.createElement('script'); ga.type = 'text/javascript'; 
                                ga.async = true; 
                                ga.src = ('https:' == document.location.protocol ? 'https://' : 
                                    'http://') + 'stats.g.doubleclick.net/dc.js'; 
                                var s = document.getElementsByTagName('script')[0]; 
                                s.parentNode.insertBefore(ga, s); 
                            })();      
                        </script>  
                        <!-- Google Analytics End Code --> 


                    </div>

                    <!-- Fim do Head -->

                    <script type="text/javascript">
                        function getQueryString(key, default_)
                        {
                            if (default_==null) default_="";
                            key = key.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]").toLowerCase();
                            var regex = new RegExp("[\\?&]"+key+"=([^&#]*)");
                            var qs = regex.exec(window.location.href.toLowerCase());
                            if(qs == null)
                                return default_;
                            else
                                return qs[1];
                        }
	
                        function setCookie( name, value, expires, path, domain, secure )
                        {
                            // set time, it's in milliseconds
                            var today = new Date();
                            today.setTime( today.getTime() );

                            /*
                                if the expires variable is set, make the correct
                                expires time, the current script below will set
                                it for x number of days, to make it for hours,
                                delete * 24, for minutes, delete * 60 * 24
                             */
                            if ( expires )
                            {
                                expires = expires * 1000 * 60 * 60 * 24;
                            }
                            var expires_date = new Date( today.getTime() + (expires) );
                            var total = name + "=" +value+
                                ( ( expires ) ? ";expires=" + expires_date.toGMTString() : "" ) +
                                ( ( path ) ? ";path=" + path : "" ) +
                                ( ( domain ) ? ";domain=" + domain : "" ) ;
                            document.cookie = total;
                        }

                        function VerificaSalvaCookieParceiro()
                        {
                            var parceiro_value = getQueryString('parceiro','');
                            if(parceiro_value != '')
                            {
                                setCookie( 'Parceiro', parceiro_value, '30', '/', '', '' );
                            }
                        }
    	
                        VerificaSalvaCookieParceiro();
                    </script>

                    <link rel="stylesheet" type="text/css" href="https://www.megamamute.com.br/includes/minify.aspx?fechamento.css,novos|main.css,novos" media="screen" />
                    </head>
                    <body onload="load()">

                        

                            <script type="text/javascript">
                                //<![CDATA[
                                var theForm = document.forms['frm'];
                                if (!theForm) {
                                    theForm = document.frm;
                                }
                                function __doPostBack(eventTarget, eventArgument) {
                                    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
                                        theForm.__EVENTTARGET.value = eventTarget;
                                        theForm.__EVENTARGUMENT.value = eventArgument;
                                        theForm.submit();
                                    }
                                }
                                //]]>
                            </script>



                            <script type="text/javascript" src="/ajaxpro/prototype.ashx"></script>
                            <script type="text/javascript" src="/ajaxpro/core.ashx"></script>
                            <script type="text/javascript" src="/ajaxpro/converter.ashx"></script>
                            <script type="text/javascript" src="/ajaxpro/IKCLojaMaster.login,MegaMamute2010.ashx"></script>



                            <!-- INÃCIO DO CABEÃALHO -->
                            <div id="header">
                                <div class="container compra">		

                                    <div id="">	
                                        <br>&nbsp;			
                                            <a href="https://java-ppbrasil.rhcloud.com/DEMOindex.jsp"><img src="images/LogoTS.png"/></a>
                                    </div> 


                                    <ul id="user-contact">
                                        <br>&nbsp;	
                                            <br>&nbsp;			
                                                <br>&nbsp;		
                                                    <li class="chat" style="display:none;"><a href="http://megamamute.neoassist.com/" class="iframe pop-chat" target=_blank>Chat On-line</a></li>
                                                    <li class="atendimento first"><a href="http://www.megamamute.com.br/institucionais/index.aspx">Autoatendimento</a></li>
                                                    <li class="last">e Televendas <span class="highlights">XXXX-XXXX</span></li>
                                                    </ul>

                                                    <ul id="security">



                                                        <script language='javascript'>function vopenw() {	tbar='location=no,status=yes,resizable=yes,scrollbars=yes,width=560,height=535';	sw =  window.open('https://www.certisign.com.br/seal/splashcerti.htm','CRSN_Splash',tbar);	sw.focus();}</script>
                                                        <li><a href='javascript:vopenw()'><img src='https://www.megamamute.com.br/imagens/100x46_fundo_branco.gif' border='0' align='center' alt='Um site validado pela Certisign indica que nossa empresa concluiu satisfatoriamente todos os procedimentos para determinar que o domÃ­nio validado Ã© de propriedade ou se encontra registrado por uma empresa ou organizaÃ§Ã£o autorizada a negociar por ela ou exercer qualquer atividade lÃ­cita em seu nome.'></a></li>
                                                        <li><script src='https://seal.verisign.com/getseal?host_name=www.megamamute.com.br&size=S&use_flash=NO&use_transparent=getsealjs_b.js&lang=pt'></script></li>


                                                    </ul>    		

                                                    </div>

                                                    </div>
                                                    <!-- FIM DO CABEÃALHO -->

                                                    <!-- Google Code for Tag de remarketing -->
                                                    <!-- Remarketing tags may not be associated with personally identifiable information or placed on pages related to sensitive categories. For instructions on adding this tag and more information on the above requirements, read the setup guide: google.com/ads/remarketingsetup 
                                                    <script type="text/javascript">
                                                    /* <![CDATA[ */
                                                    var google_conversion_id = 1033702534;
                                                    var google_conversion_label = "eqHkCNKXvAUQhpn07AM"; 
                                                    var google_custom_params = window.google_tag_params;
                                                    var google_remarketing_only = true;
                                                    /* ]]> */
                                                    </script>
                                                    <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
                                                    </script>
                                                    <noscript>
                                                    <div style="display:inline;">
                                                    <img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/1033702534/?value=0&amp;label=eqHkCNKXvAUQhpn07AM&amp;guid=ON&amp;script=0"/>
                                                    </div>
                                                    </noscript>-->
                                                    <!-- Fim Google Code for Tag de remarketing --> 
                                                    <!-- MIOLO -->
                                                    <hr />
                                                    <div id="body">
                                                        <div class="container">
                                                            <!-- CONTEUDO PRINCIPAL -->
                                                            <div id="main">
                                                                <script>
                                                                    function bigImg(x,y)
                                                                    {
                                                                        y.href="https://java-ppbrasil.rhcloud.com/expcheckout_pgto_simples_IUpdateAuto.jsp"
                                                                        x.src="images/passos6.png"
                                                                    }

                                                                    function normalImg(x)
                                                                    {
                                                                        x.src="images/passos2.png"
                                                                    }
                                                                </script>
                                                                <div id="breadcrumbs_carrinho_container">
                                                                    <img id="passos2" src="images/passos2.png" >
                                                                        </br>
                                                                </div>
                                                                <%--<div id="breadcrumbs_carrinho_container">
                                                                                    <dl id="breadcrumbs_carrinho">
                                                                                            <dt>
                                                                                                    Etapas
                                                                                            </dt>
                                                                                            <dd class="fst icoPasso1">
                                                                                                    <span >
                                                                                                            Passo 1 - Compra
                                                                                                    </span>
                                                                                            </dd>
                                                                                            <dd class="icoPasso2">
                                                                                                    <span  class="selected">
                                                                                                            Passo 2 - Identificação
                                                                                                    </span>
                                                                                            </dd>
                                                                                            
                                                                                            <dd class="icoPasso3" id="icoPasso3">
                                                                                                <span name="end" class="">
                                                                                                            Passo 3 - Endereço
                                                                                                    </span>
                                                                                            </dd>
                                                                                            <dd class="icoPasso4">
                                                                                                    <span >
                                                                                                            Passo 4 - Entrega
                                                                                                    </span>
                                                                                            </dd>
                                                                                            <dd class="icoPasso5">
                                                                                                    <span >
                                                                                                            Passo 5 - Pagamento
                                                                                                    </span>
                                                                                            </dd>							
                                                                                            
                                                                                    </dl>
                                                                            </div>--%>
                                                                <!-- CONTEUDO INTERNO (CENTRO) -->
                                                                <div id="box_login" class="box_910_container">
                                                                    <div class="box_910_top"></div>
                                                                    <div class="box_910_mid" style="width:100%">
                                                                        <!-- BOX ESQUERDA (LOGIN) -->
                                                                        <div class="containerLogin box_login" align="center" style="width:28%">
                                                                            <input type="radio" name="usuario" value="paypal" onclick="bigImg(passos2,address)" onchange="bigImg(passos2,address)" align="center"/>
                                                                            </br></br>
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;<img src="images/msgcomprapaypal.png"/>
                                                                            <fieldset class="form_container">
                                                                                <div class="fld_container">

                                                                                    <a href="https://java-ppbrasil.rhcloud.com/expcheckout_pgto_simples_IUpdateAuto.jsp" tabindex="3" name="btnContinuar1" id="btnContinuar1" class='blue_bt bt_continuar' style="width:80;"><img src="https://www.paypalobjects.com/webstatic/mktg/br/botoes_paypal_nf_v01.png" title="Comprar usando conta PayPal" value="Comprar usando conta PayPal"/></a>
                                                                                    <br>&nbsp;
                                                                                        <p class="pass_disclaimer">
                                                                                            Use sua conta PayPal e finalize seu pedido com mais agilidade.
                                                                                        </p>
                                                                                </div>
                                                                            </fieldset>

                                                                        </div>
                                                                        <!-- FIM BOX ESQUERDA (LOGIN) -->
                                                                        <!-- BOX DIREITA (CADASTRE-SE) -->
                                                                        <div class="containerCadastro box_login" align="center" style="width:28%">
                                                                            <input type="radio" name="usuario" value="loja" onclick="normalImg(passos2)" align="center" checked/>
                                                                            </br></br>    
                                                                            <img src="images/userloja.png">
                                                                                <fieldset class="form_container" align="left">
                                                                                    <div class="fld_container">
                                                                                        <label for="fldLoginEmail">
                                                                                            Informe seu e-mail
                                                                                        </label>
                                                                                        <input name="txtEmail" type="text" value="" maxlength="128" id="txtEmail" tabindex="1" class="fldEmail" onkeydown="ColocaFocus('btnContinuar1', event);" autocomplete="Off" title="Informe seu e-mail" />
                                                                                    </div>
                                                                                    <div class="fld_container">
                                                                                        <label for="fldLoginSenha">
                                                                                            Informe sua senha
                                                                                        </label>
                                                                                        <input name="txtSenha" type="password" maxlength="128" id="txtSenha" tabindex="2" class="fldLogin" onkeydown="ColocaFocus('btnContinuar1', event);" title="Informe sua senha" />
                                                                                        <!--<a href="javascript:Continuar('S')" tabindex="3" name="btnContinuar1" id="btnContinuar1" class='blue_bt bt_continuar' style="width:80;"><img class="btEnviar nb" src="https://www.megamamute.com.br/Imagens/bt_entrar.gif" id="btLoginEntrar" name="btLoginEntrar" title="Entrar" value="Entrar" /></a>-->
                                                                                        </br></br></br>
                                                                                    </div>

                                                                                </fieldset>
                                                                                

                                                                                <a href="https://java-ppbrasil.rhcloud.com/DEMOlogin.jsp" id="address" align="center" tabindex="6" name="btnContinuar2" id="btnContinuar2" class='blue_bt bt_continuar'><img class="btEnviar nb" src="https://www.megamamute.com.br/Imagens/bt_continuar.gif" id="Img1" name="btLoginEntrar" title="Entrar" value="Entrar" /></a>

                                                                        </div>
                                                                        <!-- FIM BOX DIREITA (CADASTRE-SE) -->

                                                                        <!-- BOX PEDIDO SEM CADASTRO -->
                                                                        <div class="containerCadastro box_login" align="center" style="width:28%">
                                                                            <input type="radio" name="usuario" value="novo" onclick="normalImg(passos2)" align="center" />
                                                                            </br></br>
                                                                            <img src="images/newuser3.png">
                                                                                <fieldset class="form_container" align="left">
                                                                                    <div class="fld_container">
                                                                                        <label for="fldCadastreseEmail">
                                                                                            Informe seu e-mail
                                                                                        </label>
                                                                                        <input name="txtEmail2" type="text" maxlength="128" id="txtEmail2" tabindex="4" class="fldEmail" onkeydown="ColocaFocus('btnContinuar2', event);" autocomplete="Off" title="Informe seu e-mail" />
                                                                                    </div>
                                                                                    <div class="fld_container">
                                                                                        <label for="fldCadastreseCep">
                                                                                            Informe seu CEP
                                                                                        </label>
                                                                                        <input name="txtCep1" type="text" maxlength="9" id="txtCep1" tabindex="5" class="fldCep" onkeypress="SomenteNumero2(event,this,'#####-###');" onkeydown="ColocaFocus('btnContinuar2', event);" title="Informe seu CEP" />
                                                                                        <!--<a href="javascript:Continuar('P')" tabindex="6" name="btnContinuar2" id="btnContinuar2" class='blue_bt bt_continuar'><img class="btEnviar nb" src="https://www.megamamute.com.br/Imagens/bt_continuar.gif" id="Img1" name="btLoginEntrar" title="Entrar" value="Entrar" /></a>-->								
                                                                                    </div>
                                                                                    <p class="pass_disclaimer">
                                                                                        Sua senha ser&aacute; criada no pr&oacute;ximo passo
                                                                                    </p>
                                                                                </fieldset>
                                                                        </div>

                                                                    </div>
                                                                    <div class="box_910_bot"></div>
                                                                </div>
                                                                <!-- FIM DO CONTEUDO INTERNO (CENTRO) -->
                                                            </div>
                                                            <!-- FIM DO CONTEUDO PRINCIPAL -->
                                                        </div>
                                                    </div>
                                                    <!-- FIM DO MIOLO -->


                                                    <!-- RODAPE -->
                                                    <div id="footer">
                                                        <div class="container compra">
                                                            <!-- MENUS INSTITUCIONAIS -->
                                                            <dl id="lst_forma_pagamento">
                                                                <dt>
                                                                    Formas de Pagamento
                                                                </dt>


                                                                <dd class="card">
                                                                    Cartões de Crédito
                                                                </dd>


                                                                <dd class="boleto">
                                                                    Boleto
                                                                </dd>
                                                                <dd class="paypal">
                                                                    <!-- PayPal Logo --><table style="padding-top:5px; padding-right:3px;" border="0" cellpadding="0" cellspacing="0" align="left"><tr><td align="center"></td></tr>
                                                                        <tr ><td align="left"><a rel="nofollow" href="#" onclick="javascript:window.open('https://www.paypal.com/br/cgi-bin/webscr?cmd=xpt/Marketing/popup/OLCWhatIsPayPal-outside','olcwhatispaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=400, height=350');"><img  src="https://www.paypal-brasil.com.br/logocenter/util/img/ikeda/ikeda/seloPayPal1.png" border="0" alt="Imagens de soluÃ§Ã£o" width="50"></a></td></tr></table><!-- PayPal Logo -->						
                                                                </dd>


                                                                <dd class="debito">
                                                                    Débito Online
                                                                </dd>

                                                            </dl>

                                                            <dl id="lst_site_seguro">
                                                                <dt>
                                                                    Site Seguro
                                                                </dt>
                                                                <dd class="coluna">
                                                                    <div class="first">
                                                                        <script language='javascript'>function vopenw() {	tbar='location=no,status=yes,resizable=yes,scrollbars=yes,width=560,height=535';	sw =  window.open('https://www.certisign.com.br/seal/splashcerti.htm','CRSN_Splash',tbar);	sw.focus();}</script>
                                                                        <a rel="nofollow" href='javascript:vopenw()'>
                                                                            <img src="https://www.megamamute.com.br/Imagens/logo_certisign.gif" alt="Certisign - Site seguro" title="Certisign - Site seguro" />
                                                                        </a>
                                                                    </div>


                                                                    <div class="verisign first">
                                                                        <script src=https://seal.verisign.com/getseal?host_name=www.megamamute.com.br&size=S&use_flash=NO&use_transparent=getsealjs_b.js&lang=pt></script>
                                                                    </div>

                                                                </dd>

                                                                <dd class="coluna">
                                                                    <div class="ebit">
                                                                        <a id="seloEbit" href="http://www.ebit.com.br/#megamamute" target="_blank" onclick="redir(this.href);">AvaliaÃ§Ã£o de Lojas e-bit</a>
                                                                        <script type="text/javascript" id="getSelo" src="https://a248.e.akamai.net/f/248/52872/0s/img.ebit.com.br/ebitBR/selo-ebit/js/getSelo.js?4941" ></script>   
                                                                    </div>

                                                                    <div class="ebit">
                                                                        <img src="https://www.megamamute.com.br/Imagens/Informatica_MegaMamute.png" alt="MegaMamute - InformÃ¡rtica" title="MegaMamute - InformÃ¡rtica" />
                                                                    </div> 				        
                                                                </dd>

                                                                <dd class="coluna">
                                                                    <div>
                                                                        <a rel="nofollow" href="http://www.zura.com.br/lojas/megamamute-avaliacoes.html" target="_blank">
                                                                            <img src="https://www.megamamute.com.br/Imagens/logo_zura.gif" alt="Zura!" title="Zura!" />
                                                                        </a>
                                                                    </div>

                                                                    <div>
                                                                        <a rel="nofollow" href="javascript:;">
                                                                            <img src="https://www.megamamute.com.br/Imagens/logo_correios.gif" alt="Correios" title="Correios" />
                                                                        </a>
                                                                    </div>

                                                                    <div class="ebit">				            
                                                                    </div> 				        			        
                                                                </dd>
                                                            </dl>
                                                        </div>
                                                    </div>
                                                    <div id="footer-rakuten">
                                                        <div class="container">
                                                            <p id="left">
                                                            </p>
                                                            <span id="logo-rakuten">
                                                                <a href="http://www.rakuten.com.br/ecservice/" target="_blank">

                                                                    <img src="https://www.rakuten.com.br/images/logo_rakuten.gif" title="Rakuten EC Service" alt="rakuten" />

                                                                </a>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <!-- FIM DO COPYRIGHT -->
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



                                                    <!-- FIM DO RODAPE -->		 

                                                    


                                                    <script type="text/javascript">
                                                        Init.run();
                                                        function load(){
                                                            alert("Teste 1");
                                                        }
                    setTimeout(function() { document.getElementById("img").click();}, 10);
                    //
                    //document.forms[0].submit(); 
                }
                                                    </script>
                                                    </body>
                                                    </html>
