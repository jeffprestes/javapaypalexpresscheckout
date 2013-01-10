<%-- 
    Document   : adaptive_pgto_simples
    Created on : 05/06/2012, 14:36:18
    Author     : jeffprestes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PayPal Java Testes - Express Checkout - Pagamento simples</title>
    </head>
    <body>
        <h1>PayPal Java Testes - Express Checkout - Pagamento simples - Sem pagamento paralelo</h1>
        <table>
            <form action='<c:out value="${pageContext.servletContext.contextPath}" />/ExpressCheckoutController' method="POST">
                <tr>
                    <td>Quer ver os parametros antes de redirecionar? </td>
                    <td>
                        <select id="NAOENVIAR_OPCREDIRECT" name="NAOENVIAR_OPCREDIRECT">
                            <option value="0">NÃO</option>
                            <option value="1">SIM</option>
                        </select>
                    </td>
                </tr>    
                <tr>
                    <td>URL do EndPoint: </td>
                    <td>
                        <select id="NAOENVIAR_ENDPOINT" name="NAOENVIAR_ENDPOINT">
                            <option value="https://api-3t.sandbox.paypal.com/nvp">Sandbox - api-3t.sandbox.paypal.com/nvp</option>
                            <option value="https://api-3t.paylpal.com/nvp">Produção - api-3t.paypal.com</option>
                        </select>
                    </td>
                </tr>    
                <tr>
                    <td>Tipo de checkout (CMD): </td>
                    <td>
                        <select id="NAOENVIAR_TIPOCHECKOUT" name="NAOENVIAR_TIPOCHECKOUT">
                            <option value="_express-checkout" selected="selected">WEB</option>
                            <option value="_express-checkout-mobile">Mobile</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Tipo de fluxo (USERACTION): </td>
                    <td>
                        <select id="NAOENVIAR_TIPOFLUXO" name="NAOENVIAR_TIPOFLUXO">
                            <option value="commit" selected="selected">TRADICIONAL</option>
                            <option value="shortcut">SHORTCUT</option>
                        </select>
                    </td>
                </tr>                
                <tr>
                    <td>Metodo (METHOD): </td>
                    <td>
                        <input type="text" value="SetExpressCheckout" size="60" name="METHOD" id="METHOD" />
                    </td>
                </tr>
                <tr>
                    <td>Acao (PAYMENTREQUEST_0_PAYMENTACTION): </td>
                    <td>
                        <input type="text" value="SALE" size="60" name="PAYMENTREQUEST_0_PAYMENTACTION" id="PAYMENTREQUEST_0_PAYMENTACTION" />
                    </td>
                </tr>
                <tr>
                    <td>Versao (VERSION - Para saber a ultima versão vá a pagina paypal.com e veja no fonte da pagina os 3 primeiros digitos do campo webversion) : </td>
                    <td>
                        <input type="text" value="91.0" size="10" name="VERSION" id="VERSION" />
                    </td>
                </tr>
                <tr>
                    <td>Usuario (USER): </td>
                    <td>
                        <input type="text" value="jeffprestes_api1.gmail.com" size="60" name="USER" id="USER" />
                    </td>
                </tr>
                <tr>
                    <td>Senha (PWD): </td>
                    <td>
                        <input type="text" value="3SZKBPGTTLMVQ66B" size="60" name="PWD" id="PWD" />
                    </td>
                </tr>
                <tr>
                    <td>Assinatura (SIGNATURE): </td>
                    <td>
                        <input type="text" value="ATutHe2f5sqGdXTHx0Gdsr3F4EnaAPbdeidoBxokDfl3cK.mR1XmuSHH" size="60" name="SIGNATURE" id="SIGNATURE" />
                    </td>
                </tr>
                <tr>
                    <td>Permissão a terceiros (SUBJECT): </td>
                    <td>
                        <!-- <input type="text" value="" size="60" name="SUBJECT" id="SUBJECT" /> -->
                    </td>
                </tr>
                <tr>
                    <td>
                        Url de retorno (RETURNURL): </td>
                    <td>
                        <input type="text" value="http://localhost:8080/paypaljavatestes/expcheckout_retorno.jsp" name="RETURNURL" id="RETURNURL" size="100" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Url de cancelamento (CANCELURL): </td>
                    <td>
                        <input type="text" value="http://localhost:8080/paypaljavatestes/retorno.jsp" name="CANCELURL" id="CANCELURL" size="100" />
                    </td>
                </tr>
                <tr>
                    <td>Requer endereco confirmado (REQCONFIRMSHIPPING) : </td>
                    <td>
                        <input type="text" value="0" name="REQCONFIRMSHIPPING" id="REQCONFIRMSHIPPING" size="2" />
                    </td>
                </tr>
                <tr>
                    <td>Sem entrega? (NOSHIPPING):</td>
                    <td>
                        <input type="text" value="2" name="NOSHIPPING" id="NOSHIPPING" size="6" />
                    </td>
                </tr>
                <tr>
                    <td>Permite nota por parte do comprador?  (ALLOWNOTE) </td>
                    <td>
                        <input type="text" value="1" name="ALLOWNOTE" id="ALLOWNOTE" size="6" />
                    </td>
                </tr>
                <tr>
                    <td>
                        O cliente pode alterar o endereço (ADDROVERRIDE): </td>
                    <td>
                        <input type="text" value="1" name="ADDROVERRIDE" id="ADDROVERRIDE" size="2" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Localização (LOCALECODE) : </td>
                    <td>
                        <input type="text" value="pt_BR" name="LOCALECODE" id="LOCALECODE" size="6" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Url de cancelamento (CANCELURL): </td>
                    <td>
                        <input type="text" value="http://localhost:8080/paypaljavatestes/retorno.jsp" name="CANCELURL" id="CANCELURL" size="100" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Imagem de cabeçalho (HDRIMG): </td>
                    <td>
                        <input type="text" value="https://www.paypal-brasil.com.br/logocenter/util/img/banners/banner100M.png" name="HDRIMG" id="HDRIMG" size="120" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Cor da borda do cabeçalho (HDRBORDERCOLOR): </td>
                    <td>
                        <input type="text" value="0000cc" name="HDRBORDERCOLOR" id="HDRBORDERCOLOR" size="8" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Cor de fundo do cabeçalho (HDRBACKCOLOR): </td>
                    <td>
                        <input type="text" value="0000FF" name="HDRBACKCOLOR" id="HDRBACKCOLOR" size="8" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Cor de fundo do corpo da página (PAYFLOWCOLOR): </td>
                    <td>
                        <input type="text" value="DDDDDD" name="PAYFLOWCOLOR" id="PAYFLOWCOLOR" size="8" />
                    </td>
                </tr>
                <tr>
                    <td>
                        EMAIL do comprador (EMAIL) : </td>
                    <td>
                        <input type="text" value="luisantonio@gmail.com" name="EMAIL" id="EMAIL" size="60" />
                    </td>
                </tr>
                <tr>
                    <td>
                        1a página vista pelo comprador (LANDINGPAGE) : </td>
                    <td>
                        <select id="LANDINGPAGE" name="LANDINGPAGE">
                            <option value=" "> </option>
                            <option value="Billing">Billing</option>
                            <option value="Login">Login</option>
                        </select>                    
                    </td>
                </tr>
                <tr>
                    <td>
                        Nome da marca do cliente (BRANDNAME) : </td>
                    <td>
                        <input type="text" value="Xiboquinha.com" name="BRANDNAME" id="BRANDNAME" size="60" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Nro da Central de Atendimento (CUSTOMERSERVICENUMBER) : </td>
                    <td>
                        <input type="text" value="(11) 4001-4040" name="CUSTOMERSERVICENUMBER" id="CUSTOMERSERVICENUMBER" size="60" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><hr /></td>
                </tr>
                <tr>  
                    <td colspan="2">Dados do comprador</td>
                </tr> 
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>                
                    <td>
                        Destinatario (PAYMENTREQUEST_0_SHIPTONAME)
                    </td>
                    <td>
                        <input type="text" value="Jose da Silva" name="PAYMENTREQUEST_0_SHIPTONAME" id="PAYMENTREQUEST_0_SHIPTONAME" size="100" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        Endereço (PAYMENTREQUEST_0_SHIPTOSTREET)
                    </td>
                    <td>
                        <input type="text" value="Al. Santos, 787 - 8o andar" name="PAYMENTREQUEST_0_SHIPTOSTREET" id="PAYMENTREQUEST_0_SHIPTOSTREET" size="100" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        Bairro (PAYMENTREQUEST_0_SHIPTOSTREET2)
                    </td>
                    <td>
                        <input type="text" value="Cerqueira Cesar" name="PAYMENTREQUEST_0_SHIPTOSTREET2" id="PAYMENTREQUEST_0_SHIPTOSTREET2" size="100" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        Cidade (PAYMENTREQUEST_0_SHIPTOCITY)
                    </td>
                    <td>
                        <input type="text" value="São Paulo" name="PAYMENTREQUEST_0_SHIPTOCITY" id="PAYMENTREQUEST_0_SHIPTOCITY" size="100" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        Estado (PAYMENTREQUEST_0_SHIPTOSTATE)
                    </td>
                    <td>
                        <input type="text" value="SP" name="PAYMENTREQUEST_0_SHIPTOSTATE" id="PAYMENTREQUEST_0_SHIPTOSTATE" size="5" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        CEP (PAYMENTREQUEST_0_SHIPTOZIP)
                    </td>
                    <td>
                        <input type="text" value="01419-001" name="PAYMENTREQUEST_0_SHIPTOZIP" id="PAYMENTREQUEST_0_SHIPTOZIP" size="10" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        PAÍS (PAYMENTREQUEST_0_SHIPTOCOUNTRY)
                    </td>
                    <td>
                        <input type="text" value="BR" name="PAYMENTREQUEST_0_SHIPTOCOUNTRY" id="PAYMENTREQUEST_0_SHIPCOUNTRY" size="5" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        TELEFONE (PAYMENTREQUEST_0_SHIPTOPHONENUM)
                    </td>
                    <td>
                        <input type="text" value="(11) 99876-1020" name="PAYMENTREQUEST_0_SHIPTOPHONENUM" id="PAYMENTREQUEST_0_SHIPTOPHONENUM" size="100" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2"><hr /></td>
                </tr>
                <tr>  
                    <td colspan="2">Dados financeiros/total da compra</td>
                </tr> 
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>                
                    <td>
                        Codigo da Moeda (PAYMENTREQUEST_0_CURRENCYCODE)
                    </td>
                    <td>
                        <input type="text" value="BRL" name="PAYMENTREQUEST_0_CURRENCYCODE" id="PAYMENTREQUEST_0_CURRENCYCODE" size="100" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        TOTAL Geral (PAYMENTREQUEST_0_AMT)
                    </td>
                    <td>
                        <input type="text" value="1,000.32" name="PAYMENTREQUEST_0_AMT" id="PAYMENTREQUEST_0_AMT" size="100" />
                    </td>
                </tr>

                <tr>                
                    <td>
                        Total dos Itens (PAYMENTREQUEST_0_ITEMAMT)
                    </td>
                    <td>
                        <input type="text" value="900.32" name="PAYMENTREQUEST_0_ITEMAMT" id="PAYMENTREQUEST_0_ITEMAMT" size="100" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        Total do frete (PAYMENTREQUEST_0_SHIPPINGAMT)
                    </td>
                    <td>
                        <input type="text" value="32.00" name="PAYMENTREQUEST_0_SHIPPINGAMT" id="PAYMENTREQUEST_0_SHIPPINGAMT" size="100" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        Total de desconto do frete (PAYMENTREQUEST_0_SHIPPINGDISCAMT)
                    </td>
                    <td>
                        <input type="text" value="-100.00" name="PAYMENTREQUEST_0_SHIPPINGDISCAMT" id="PAYMENTREQUEST_0_SHIPPINGDISCAMT" size="100" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        Total do manuseio (embalagem para presente)(PAYMENTREQUEST_0_HANDLINGAMT)
                    </td>
                    <td>
                        <input type="text" value="34.00" name="PAYMENTREQUEST_0_HANDLINGAMT" id="PAYMENTREQUEST_0_HANDLINGAMT" size="100" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        Total dos impostos (PAYMENTREQUEST_0_TAXAMT)
                    </td>
                    <td>
                        <input type="text" value="34.00" name="PAYMENTREQUEST_0_TAXAMT" id="PAYMENTREQUEST_0_TAXAMT" size="100" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2"><hr /></td>
                </tr>
                <tr>  
                    <td colspan="2">Informações para controle do vendedor</td>
                </tr> 
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>                
                    <td>
                        Descrição (PAYMENTREQUEST_0_DESC)
                    </td>
                    <td>
                        <input type="text" value="Compra de super oferta (128 caracteres)" name="PAYMENTREQUEST_0_DESC" id="PAYMENTREQUEST_0_DESC" size="100" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        Campo aberto (PAYMENTREQUEST_0_CUSTOM)
                    </td>
                    <td>
                        <input type="text" value="Voce pode colocar qualquer informacao aqui. Ate 256 caracteres" name="PAYMENTREQUEST_0_CUSTOM" id="PAYMENTREQUEST_0_CUSTOM" size="100" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        Numero Nota Fiscal/Pedido (PAYMENTREQUEST_0_INVNUM)
                    </td>
                    <td>
                        <input type="text" value="123456" name="PAYMENTREQUEST_0_INVNUM" id="PAYMENTREQUEST_0_INVNUM" size="100" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2"><hr /></td>
                </tr>
                <tr>  
                    <td colspan="2">Informações sobre os itens de compra</td>
                </tr> 
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>  
                    <td colspan="2">&nbsp;&nbsp;Item 1</td>
                </tr> 
                <tr>                
                    <td>
                        Nome (L_PAYMENTREQUEST_0_NAME0 - COMPR 127 CARACTERES)
                    </td>
                    <td>
                        <input type="text" value="TV LED 42pol" name="L_PAYMENTREQUEST_0_NAME0" id="L_PAYMENTREQUEST_0_NAME0" size="100" />
                    </td>
                </tr>            
                <tr>                
                    <td>
                        Descrição (L_PAYMENTREQUEST_0_DESC0 - COMPR 127 CARACTERES)
                    </td>
                    <td>
                        <input type="text" value="TV LED Marca Xpto de 42 polegadas, com TV Digital e interativa integrada" name="L_PAYMENTREQUEST_0_DESC0" id="L_PAYMENTREQUEST_0_DESC0" size="100" />
                    </td>
                </tr> 
                <tr>                
                    <td>
                        Valor do item (L_PAYMENTREQUEST_0_AMT0)
                    </td>
                    <td>
                        <input type="text" value="900.32" name="L_PAYMENTREQUEST_0_AMT0" id="L_PAYMENTREQUEST_0_AMT0" size="100" />
                    </td>
                </tr> 
                <tr>                
                    <td>
                        Numero do item (L_PAYMENTREQUEST_0_NUMBER0 - Usado para ordenar a lista de itens)
                    </td>
                    <td>
                        <input type="text" value="0" name="L_PAYMENTREQUEST_0_NUMBER0" id="L_PAYMENTREQUEST_0_NUMBER0" size="100" />
                    </td>
                </tr> 
                <tr>                
                    <td>
                        Quantidade (L_PAYMENTREQUEST_0_QTY0)
                    </td>
                    <td>
                        <input type="text" value="1" name="L_PAYMENTREQUEST_0_QTY0" id="L_PAYMENTREQUEST_0_QTY0" size="100" />
                    </td>
                </tr> 
                <tr>                
                    <td>
                        Imposto (L_PAYMENTREQUEST_0_TAXAMT0)
                    </td>
                    <td>
                        <input type="text" value="30.00" name="L_PAYMENTREQUEST_0_TAXAMT0" id="L_PAYMENTREQUEST_0_TAXAMT0" size="100" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        URL de Descrição do Item (L_PAYMENTREQUEST_0_ITEMURL0)
                    </td>
                    <td>
                        <input type="text" value="http://store.vizio.com/led-lcd-hdtvs/e420vse.html" name="L_PAYMENTREQUEST_0_ITEMURL0" id="L_PAYMENTREQUEST_0_ITEMURL0" size="100" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        Categoria do item, Digital ou Fisico (L_PAYMENTREQUEST_0_ITEMCATEGORY0)
                    </td>
                    <td>
                        <select name="L_PAYMENTREQUEST_0_ITEMCATEGORY0" id="L_PAYMENTREQUEST_0_ITEMCATEGORY0">
                            <option value="Physical" selected="selected">Physical</option>
                            <option value="Digital">Digital</option>
                        </select>
                    </td>
                </tr> 
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>  
                    <td colspan="2">&nbsp;&nbsp;Item 2</td>
                </tr> 
                <tr>                
                    <td>
                        Nome (L_PAYMENTREQUEST_0_NAME1 - COMPR 127 CARACTERES)
                    </td>
                    <td>
                        <input type="text" value="Garantia Extendida" name="L_PAYMENTREQUEST_0_NAME1" id="L_PAYMENTREQUEST_0_NAME1" size="100" />
                    </td>
                </tr>            
                <tr>                
                    <td>
                        Descrição (L_PAYMENTREQUEST_0_DESC1 - COMPR 127 CARACTERES)
                    </td>
                    <td>
                        <input type="text" value="Garantia extendida de até 3 anos" name="L_PAYMENTREQUEST_0_DESC1" id="L_PAYMENTREQUEST_0_DESC1" size="100" />
                    </td>
                </tr> 
                <tr>                
                    <td>
                        Valor do item (L_PAYMENTREQUEST_0_AMT1)
                    </td>
                    <td>
                        <input type="text" value="100.00" name="L_PAYMENTREQUEST_0_AMT1" id="L_PAYMENTREQUEST_0_AMT1" size="100" />
                    </td>
                </tr> 
                <tr>                
                    <td>
                        Numero do item (L_PAYMENTREQUEST_0_NUMBER1 - Usado para ordenar a lista de itens)
                    </td>
                    <td>
                        <input type="text" value="1" name="L_PAYMENTREQUEST_0_NUMBER1" id="L_PAYMENTREQUEST_0_NUMBER1" size="100" />
                    </td>
                </tr> 
                <tr>                
                    <td>
                        Quantidade (L_PAYMENTREQUEST_0_QTY1)
                    </td>
                    <td>
                        <input type="text" value="1" name="L_PAYMENTREQUEST_0_QTY1" id="L_PAYMENTREQUEST_0_QTY1" size="100" />
                    </td>
                </tr> 
                <tr>                
                    <td>
                        Imposto (L_PAYMENTREQUEST_0_TAXAMT1)
                    </td>
                    <td>
                        <input type="text" value="4.00" name="L_PAYMENTREQUEST_0_TAXAMT1" id="L_PAYMENTREQUEST_0_TAXAMT1" size="100" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        URL de Descrição do Item (L_PAYMENTREQUEST_0_ITEMURL1)
                    </td>
                    <td>
                        <input type="text" value="http://www.procon.al.gov.br/duvidas-frequentes/o-que-e-garantia-estendida" name="L_PAYMENTREQUEST_0_ITEMURL1" id="L_PAYMENTREQUEST_0_ITEMURL1" size="100" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        Categoria do item, Digital ou Fisico (L_PAYMENTREQUEST_0_ITEMCATEGORY1)
                    </td>
                    <td>
                        <select name="L_PAYMENTREQUEST_0_ITEMCATEGORY1" id="L_PAYMENTREQUEST_0_ITEMCATEGORY1">
                            <option value="Physical">Physical</option>
                            <option value="Digital" selected="selected">Digital</option>
                        </select>
                    </td>
                </tr>           
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>  
                    <td colspan="2">&nbsp;&nbsp;Item 3</td>
                </tr> 
                <tr>                
                    <td>
                        Nome (L_PAYMENTREQUEST_0_NAME2 - COMPR 127 CARACTERES)
                    </td>
                    <td>
                        <input type="text" value="Desconto" name="L_PAYMENTREQUEST_0_NAME2" id="L_PAYMENTREQUEST_0_NAME2" size="100" />
                    </td>
                </tr>            
                <tr>                
                    <td>
                        Descrição (L_PAYMENTREQUEST_0_DESC2 - COMPR 127 CARACTERES)
                    </td>
                    <td>
                        <input type="text" value="Desconto por pontuação" name="L_PAYMENTREQUEST_0_DESC2" id="L_PAYMENTREQUEST_0_DESC2" size="100" />
                    </td>
                </tr> 
                <tr>                
                    <td>
                        Valor do item (L_PAYMENTREQUEST_0_AMT2)
                    </td>
                    <td>
                        <input type="text" value="-100.00" name="L_PAYMENTREQUEST_0_AMT2" id="L_PAYMENTREQUEST_0_AMT2" size="100" />
                    </td>
                </tr> 
                <tr>                
                    <td>
                        Numero do item (L_PAYMENTREQUEST_0_NUMBER2 - Usado para ordenar a lista de itens)
                    </td>
                    <td>
                        <input type="text" value="2" name="L_PAYMENTREQUEST_0_NUMBER2" id="L_PAYMENTREQUEST_0_NUMBER2" size="100" />
                    </td>
                </tr> 
                <tr>                
                    <td>
                        Quantidade (L_PAYMENTREQUEST_0_QTY2)
                    </td>
                    <td>
                        <input type="text" value="1" name="L_PAYMENTREQUEST_0_QTY2" id="L_PAYMENTREQUEST_0_QTY2" size="100" />
                    </td>
                </tr> 
                <tr>                
                    <td>
                        Imposto (L_PAYMENTREQUEST_0_TAXAMT2)
                    </td>
                    <td>
                        <input type="text" value="0.00" name="L_PAYMENTREQUEST_0_TAXAMT2" id="L_PAYMENTREQUEST_0_TAXAMT2" size="100" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        URL de Descrição do Item (L_PAYMENTREQUEST_0_ITEMURL2)
                    </td>
                    <td>
                        <input type="text" value="" name="L_PAYMENTREQUEST_0_ITEMURL2" id="L_PAYMENTREQUEST_0_ITEMURL2" size="100" />
                    </td>
                </tr>
                <tr>                
                    <td>
                        Categoria do item, Digital ou Fisico (L_PAYMENTREQUEST_0_ITEMCATEGORY2)
                    </td>
                    <td>
                        <select name="L_PAYMENTREQUEST_0_ITEMCATEGORY2" id="L_PAYMENTREQUEST_0_ITEMCATEGORY2">
                            <option value="Physical">Physical</option>
                            <option value="Digital" selected="selected">Digital</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" style="vertical-align: middle; text-align: center">
                        <input type="submit" name="Submit" value="Submit" />
                    </td>
                </tr>
            </form>
        </table>
    </body>
</html>
