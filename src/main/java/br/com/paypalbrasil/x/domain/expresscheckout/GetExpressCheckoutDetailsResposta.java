/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain.expresscheckout;

import br.com.paypalbrasil.x.domain.CabecalhoResposta;
import br.com.paypalbrasil.x.domain.Resposta;
import java.util.List;
import java.util.Objects;

/**
 * Classe que armazena os dados de resposta do WebService
 * GetExpressCheckoutDetails
 *
 * @author jprestes
 */
public class GetExpressCheckoutDetailsResposta extends Resposta {

    private CabecalhoResposta cabecalho;
    private String ack;
    private String timestamp;
    private String token;
    private String textoLivre;
    private String nroPedido;
    private String telefone;
    private String paypalAdjustment;
    private String nota;
    private CheckoutStatus statusCheckout;
    private List<Vendedor> vendedor;
    private String mensagemPresente;
    private String perguntaOpiniao;
    private String respostaPerguntaOpiniao;
    private Comprador comprador;
    private DadosEntrega dadosEntrega;
    private String total;
    private String moeda;
    private DadosPagamento dadosPagamento;
    private String transactionId;
    private String correlationId;
    private String paymentRequestId;
    private String nomeItem;
    private String quantidade;
    private List<ItemVenda> itens;
    private ErroResposta erro;

    public GetExpressCheckoutDetailsResposta() {
    }

    public GetExpressCheckoutDetailsResposta(CabecalhoResposta cabecalho) {
        this.cabecalho = cabecalho;
    }

    public ErroResposta getErro() {
        return erro;
    }

    public void setErro(ErroResposta erro) {
        this.erro = erro;
    }

    public CabecalhoResposta getCabecalho() {
        return cabecalho;
    }

    public void setCabecalho(CabecalhoResposta cabecalho) {
        this.cabecalho = cabecalho;
    }

    public Comprador getComprador() {
        return comprador;
    }

    public void setComprador(Comprador comprador) {
        this.comprador = comprador;
    }

    public DadosEntrega getDadosEntrega() {
        return dadosEntrega;
    }

    public void setDadosEntrega(DadosEntrega dadosEntrega) {
        this.dadosEntrega = dadosEntrega;
    }

    public DadosPagamento getDadosPagamento() {
        return dadosPagamento;
    }

    public void setDadosPagamento(DadosPagamento dadosPagamento) {
        this.dadosPagamento = dadosPagamento;
    }

    public List<ItemVenda> getItens() {
        return itens;
    }

    public void setItens(List<ItemVenda> itens) {
        this.itens = itens;
    }

    public String getMensagemPresente() {
        return mensagemPresente;
    }

    public void setMensagemPresente(String mensagemPresente) {
        this.mensagemPresente = mensagemPresente;
    }

    public String getMoeda() {
        return moeda;
    }

    public void setMoeda(String moeda) {
        this.moeda = moeda;
    }

    public String getNota() {
        return nota;
    }

    public void setNota(String nota) {
        this.nota = nota;
    }

    public String getNroPedido() {
        return nroPedido;
    }

    public void setNroPedido(String nroPedido) {
        this.nroPedido = nroPedido;
    }

    public String getPaymentRequestId() {
        return paymentRequestId;
    }

    public void setPaymentRequestId(String paymentRequestId) {
        this.paymentRequestId = paymentRequestId;
    }

    public String getPaypalAdjustment() {
        return paypalAdjustment;
    }

    public void setPaypalAdjustment(String paypalAdjustment) {
        this.paypalAdjustment = paypalAdjustment;
    }

    public String getPerguntaOpiniao() {
        return perguntaOpiniao;
    }

    public void setPerguntaOpiniao(String perguntaOpiniao) {
        this.perguntaOpiniao = perguntaOpiniao;
    }

    public String getRespostaPerguntaOpiniao() {
        return respostaPerguntaOpiniao;
    }

    public void setRespostaPerguntaOpiniao(String respostaPerguntaOpiniao) {
        this.respostaPerguntaOpiniao = respostaPerguntaOpiniao;
    }

    public CheckoutStatus getStatusCheckout() {
        return statusCheckout;
    }

    public void setStatusCheckout(CheckoutStatus statusCheckout) {
        this.statusCheckout = statusCheckout;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getTextoLivre() {
        return textoLivre;
    }

    public void setTextoLivre(String textoLivre) {
        this.textoLivre = textoLivre;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public String getTransactionId() {
        return transactionId;
    }

    public void setTransactionId(String transactionId) {
        this.transactionId = transactionId;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final GetExpressCheckoutDetailsResposta other = (GetExpressCheckoutDetailsResposta) obj;
        if (!Objects.equals(this.token, other.token)) {
            return false;
        }
        if (!Objects.equals(this.transactionId, other.transactionId)) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 59 * hash + Objects.hashCode(this.token);
        hash = 59 * hash + Objects.hashCode(this.transactionId);
        return hash;
    }

    @Override
    public String toString() {
        return "GetExpressCheckoutDetailsResposta{" + "token=" + token + ", textoLivre=" + textoLivre + ", nroPedido=" + nroPedido + ", telefone=" + telefone + ", paypalAdjustment=" + paypalAdjustment + ", nota=" + nota + ", statusCheckout=" + statusCheckout + ", mensagemPresente=" + mensagemPresente + ", perguntaOpiniao=" + perguntaOpiniao + ", respostaPerguntaOpiniao=" + respostaPerguntaOpiniao + ", comprador=" + comprador.toString() + ", dadosEntrega=" + dadosEntrega + ", total=" + total + ", moeda=" + moeda + ", item=" + dadosPagamento + ", transactionId=" + transactionId + ", paymentRequestId=" + paymentRequestId + ", itens=" + itens.toString() + '}';
    }

    /**
     * @return the correlationId
     */
    public String getCorrelationId() {
        return correlationId;
    }

    /**
     * @param correlationId the correlationId to set
     */
    public void setCorrelationId(String correlationId) {
        this.correlationId = correlationId;
    }

    /**
     * @return the ack
     */
    public String getAck() {
        return ack;
    }

    /**
     * @param ack the ack to set
     */
    public void setAck(String ack) {
        this.ack = ack;
    }

    /**
     * @return the timestamp
     */
    public String getTimestamp() {
        return timestamp;
    }

    /**
     * @param timestamp the timestamp to set
     */
    public void setTimestamp(String timestamp) {
        this.timestamp = timestamp;
    }

    /**
     * @return the nomeItem
     */
    public String getNomeItem() {
        return nomeItem;
    }

    /**
     * @param nomeItem the nomeItem to set
     */
    public void setNomeItem(String nomeItem) {
        this.nomeItem = nomeItem;
    }

    /**
     * @return the quantidade
     */
    public String getQuantidade() {
        return quantidade;
    }

    /**
     * @param quantidade the quantidade to set
     */
    public void setQuantidade(String quantidade) {
        this.quantidade = quantidade;
    }
}
