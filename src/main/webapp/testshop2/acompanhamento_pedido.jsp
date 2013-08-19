<!doctype html>
<%@page import="java.io.PrintWriter"%>

<%@page import="javax.servlet.*"%>

<%@page import="javax.servlet.http.*"%>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>PayPal teste shop</title>
	<link rel="stylesheet" href="css/main.css">
	<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
	<!--[if lt IE 9]>
	   <script src="js/html5shiv.js"></script>
	<![endif]-->
</head>
<body>
	<div class="wrapper">
		<header id="header">
			<section class="container">	
				<h1 title="PayPal teste shop"><a href="">PayPal teste shop</a></h1>
				<nav id="menu-primario">
					<ul>
						<li class="first"><a title="Meus pedidos" href="">Meus pedidos</a></li>
						<li><a href="" title="Minha conta">Minha conta</a></li>
						<li class="last"><a href="" title="Meu carrinho" class"meu-carrinho">Meu carrinho (00)</a></li>
					</ul>
				</nav>
				<div id="block-atendimento"><span class="atendimento" title="Atendimento: 0800-892-1555">Atendimento: 0800-892-1555</span></div>
				<div class="block-search">
					<form action="" method="">
						<input type="text">
					</form>
				</div>
			</section>	
		</header>
		<main id="main">		
			<section class="container">
				<div class="breadcrumb">
					<h2>RESUMO DOS PEDIDOS</h2>
				</div>
				<aside class="sidebar-left">
					<h3>MINHA CONTA</h3>
					<nav>
						<ul>
							<li><a href="resumo-conta.html">Resumo da conta</a></li>
							<li><a href="">Informações da conta</a></li>
							<li><a href="">Meus endereços</a></li>
							<li><a href="" class="active">Acompanhar meus pedidos</a></li>
							<li><a href="">Lista de desejos</a></li>
							<li><a href="">Gerenciar newsletter</a></li>
						</ul>
					</nav>
				</aside>
				<div id="content">
					<table cellspacing="0" cellpadding="0" border="0" class="acompanhar-pedidos">
						<thead>
							<tr>
								<td>NÚMERO DO PEDIDO</td>
								<td>DATA DA COMPRA</td>
								<td clas="last">TOTAL DO PEDIDO</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><span>#209546892</span></td>
								<td>07/06/13 12:05</td>
								<td>R$ 199,00</td>
							</tr>
						</tbody>
					</table>
                                    <hr>
                                     <hr>
                                                                                        <b>Voc� comprou : </b><%= request.getParameter("NOMEITEM")%></br>
                                                                                        <b>Unidade(s) : </b><%= request.getParameter("ITEMQTDE")%><b> , SubTotal : R$</b><%= request.getParameter("TOTALITEM")%></br></br>
                                                                                        
                                                                                        <b>Servico de entrega escolhido :</b> <%= request.getParameter("ENTREGA")%></br>
                                                                                        <b>Valor : R$</b> <%= request.getParameter("TOTALENTREGA")%></br></br>
                                                                                        <b>Tracking ID : </b> <%= request.getParameter("NAOENVIAR_TRACKING")%></br></br>
                                    
                                                                                        <b>Endere�o de entrega :</b>  <%= request.getParameter("ENDERECO")%>, <%= request.getParameter("ENDERECO2")%></br>
                                                                                        <%= request.getParameter("CIDADE")%>, <%= request.getParameter("ESTADO")%>, <%= request.getParameter("CEP")%></br></br>
                                                                                        
                                                                                        <b>E-mail do comprador : </b> <%= request.getParameter("EMAILCOMPRADOR")%></br>
                                                                                        <b>Telefone para contato : </b> <%= request.getParameter("TELEFONE")%></br>
				</div>			
			</section>
		</main>
		<div class="push"></div>
	</div>
	<footer id="footer">
		<section class="container">			
			<div id="block-search-footer">
				<div class="block-search">
					<form action="" method="">
						<input type="text">
					</form>
				</div>				
				<span class="atendimento24" title="Atendimento: 24h">Atendimento: 24h</span>
				<span class="atendimento" title="Atendimento: 0800-892-1555">Atendimento: 0800-892-1555</span>
			</div>

			<div id="forma-de-pagamento">
				<h3 title="Formas de Pagamento">Formas de Pagamento</h3>
				<div class="boleto">
					<div class="boleto">
					<div class="blocos">
						<h4>PayPal</h4>
						<img alt="" src="images/Selo_Aceitacao/Principal/selo-aceitacao_VERTICAL2.png" />
					</div>
					</div>
				</div>
			</div>
			
			<div id="acompanhe">
				<h3 title="Acompanhe">Acompanhe</h3>
				<nav>
					<ul>
						<li><a class="twitter" title="Twitter" href="">Twitter</a></li>
						<li><a class="facebook" title="Facebook" href="">Facebook</a></li>
						<li><a class="orkut" title="Orkut" href="">Orkut</a></li>
						<li><a class="blog" title="Blog" href="">Blog</a></li>
					</ul>
				</nav>
			</div>

			<div id="ajuda">
				<h3 title="Ajuda e Suporte">Ajuda e Suporte</h3>
				<nav>
					<ul>
						<li><a title="Autoatendimento" href="">Autoatendimento</a></li>
						<li><a title="Trocas e Devoluções" href="">Trocas e Devoluções</a></li>
						<li><a title="Compra Segura" href="">Compra Segura</a></li>
						<li><a title="Envio e Entrega" href="">Envio e Entrega</a></li>
						<li><a title="Navegando e Comprando" href="">Navegando e Comprando</a></li>
						<li><a title="Promoções e Serviços" href="">Promoções e Serviços</a></li>
						<li><a title="Televendas XXXX-XXXX" href="">Televendas XXXX-XXXX</a></li>						
					</ul>
				</nav>
			</div>

			<div id="institucional">
				<h3 title="Institucional">Institucional</h3>
				<nav>
					<ul>						
						<li><a title="Quem Somos" href="">Quem Somos</a></li>
						<li><a title="Serviços" href="">Serviços</a></li>
						<li><a title="Política e privacidade" href="">Política e privacidade</a></li>
						<li><a title="Afiliados" href="">Afiliados</a></li>
						<li><a title="Parcerias" href="">Parcerias</a></li>
						<li><a title="Negócios Corporativos" href="">Negócios Corporativos</a></li>
						<li><a title="Programa Fidelidade" href="">Programa Fidelidade</a></li>
					</ul>
				</nav>
			</div>

			<div id="site-seguro">
				<h3 title="Site Seguro">Site Seguro</h3>
				<a href=""><img alt="Site seguro" src="images/Selo_Seguranca/Principal/compra_segura_VERTICAL.png" /></a>
			</div>
		</section>
	</footer>
</body>
</html>