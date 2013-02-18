package br.com.paypalbrasil.x.facade.expresschekout;

import java.util.Iterator;
import java.util.logging.Logger;

import javax.xml.soap.MessageFactory;
import javax.xml.soap.SOAPBody;
import javax.xml.soap.SOAPConnection;
import javax.xml.soap.SOAPConnectionFactory;
import javax.xml.soap.SOAPElement;
import javax.xml.soap.SOAPEnvelope;
import javax.xml.soap.SOAPException;
import javax.xml.soap.SOAPMessage;
import javax.xml.soap.SOAPPart;

public class WSFretesPayPal {

    /**
     * SOAP Envelope namespace
     */
    final public static String NS_SOAP_ENV = "http://schemas.xmlsoap.org/soap/envelope/";
    /**
     * PayPal Frete Fácil namespace
     */
    final public static String NS_FF_PAYPAL = "https://ff.paypal-brasil.com.br/FretesPayPalWS";
    /**
     * PayPal Frete Fácil endpoint
     */
    final public static String FF_ENDPOINT = "https://ff.paypal-brasil.com.br/FretesPayPalWS/WSFretesPayPal";

    /**
     * Cria uma instância de SOAPMessage para ser enviada para o serviço
     * PayPal Frete Fácil para o cálculo do frete.
     *
     * @param cepOrigem
     * @param cepDestino
     * @param largura
     * @param altura
     * @param profundidade
     * @param peso
     * @return
     * @throws SOAPException
     */
    private SOAPMessage createRequest(String cepOrigem, String cepDestino,
            int largura, int altura, int profundidade, float peso)
            throws SOAPException {

        final MessageFactory mf = MessageFactory.newInstance();
        final SOAPMessage message = mf.createMessage();

        final SOAPPart part = message.getSOAPPart();
        final SOAPEnvelope soapEnv = part.getEnvelope();

        soapEnv.addNamespaceDeclaration("SOAP-ENV", WSFretesPayPal.NS_SOAP_ENV);
        soapEnv.addNamespaceDeclaration("tns", WSFretesPayPal.NS_FF_PAYPAL);

        final SOAPBody body = soapEnv.getBody();
        final SOAPElement getPreco = body.addChildElement(soapEnv.createQName(
                "getPreco", "tns"));

        getPreco.addChildElement("cepOrigem").addTextNode(cepOrigem);
        getPreco.addChildElement("cepDestino").addTextNode(cepDestino);
        getPreco.addChildElement("largura")
                .addTextNode(String.valueOf(largura));
        getPreco.addChildElement("altura").addTextNode(String.valueOf(altura));
        getPreco.addChildElement("profundidade").addTextNode(
                String.valueOf(profundidade));
        getPreco.addChildElement("peso").addTextNode(String.valueOf(peso));

        message.saveChanges();

        return message;
    }

    /**
     * Analisa a resposta do serviço Frete Fácil e extrai o valor do frete.
     *
     * @param response
     * @return
     * @throws SOAPException
     */
    private float parseResponse(SOAPMessage response) throws SOAPException {
        final Iterator<?> elements = response.getSOAPBody().getChildElements();

        final SOAPElement getPrecoResponse = (SOAPElement) elements.next();
        final String returnValue = getPrecoResponse.getChildNodes().item(0)
                .getTextContent();

        return Float.valueOf(returnValue);
    }

    /**
     * Calcula o frete utilizando o serviço PayPal Frete Fácil.
     *
     * @param cepOrigem O CEP de origem
     * @param cepDestino O CEP de destino
     * @param largura A largura da embalagem, em centímetros.
     * @param altura A altura da embalagem, em centímetros.
     * @param profundidade A profundidade, ou comprimento da embalagem, em
     * centímetros.
     * @param peso O peso deve ser informado em Kilogramas.
     * @return O valor do frete.
     */
    public float getPreco(String cepOrigem, String cepDestino, int largura,
            int altura, int profundidade, float peso) {
        float preco = 0;

        try {
            final SOAPConnectionFactory scf = SOAPConnectionFactory
                    .newInstance();
            final SOAPConnection connection = scf.createConnection();

            final SOAPMessage response = connection.call(
                    createRequest(cepOrigem, cepDestino, largura, altura,
                    profundidade, peso), WSFretesPayPal.FF_ENDPOINT);

            preco = parseResponse(response);
        } catch (UnsupportedOperationException | SOAPException e) {
            Logger.getLogger(WSFretesPayPal.class.getName()).severe(
                    e.getLocalizedMessage());
        }

        return preco;
    }
/*
    public static void main(String argv[]) {
     final WSFretesPayPal ff = new WSFretesPayPal();

     final float preco = ff.getPreco("01419001", "09291230", 12, 5, 20, 1.5f);

     System.out.println(preco);
     }*/
}