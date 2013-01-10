/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain.expresscheckout;

import java.util.Objects;

/**
 * Armazena dados de um item de compra
 *
 * @author jprestes
 */
public class DadosPagamento {

    private String totalItem;
    private String totalEntrega;
    private String totalSeguro;
    private String totalDescontoEntrega;
    private String totalImposto;
    private String totalManuseio;
    private String descricao;
    private String textoCustomizado;
    private String nroPedido;
    private String urlNotificacao;
    private String nota;

    public DadosPagamento() {
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
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

    public String getTextoCustomizado() {
        return textoCustomizado;
    }

    public void setTextoCustomizado(String textoCustomizado) {
        this.textoCustomizado = textoCustomizado;
    }

    public String getTotalDescontoEntrega() {
        return totalDescontoEntrega;
    }

    public void setTotalDescontoEntrega(String totalDescontoEntrega) {
        this.totalDescontoEntrega = totalDescontoEntrega;
    }

    public String getTotalEntrega() {
        return totalEntrega;
    }

    public void setTotalEntrega(String totalEntrega) {
        this.totalEntrega = totalEntrega;
    }

    public String getTotalImposto() {
        return totalImposto;
    }

    public void setTotalImposto(String totalImposto) {
        this.totalImposto = totalImposto;
    }

    public String getTotalItem() {
        return totalItem;
    }

    public void setTotalItem(String totalItem) {
        this.totalItem = totalItem;
    }

    public String getTotalManuseio() {
        return totalManuseio;
    }

    public void setTotalManuseio(String totalManuseio) {
        this.totalManuseio = totalManuseio;
    }

    public String getTotalSeguro() {
        return totalSeguro;
    }

    public void setTotalSeguro(String totalSeguro) {
        this.totalSeguro = totalSeguro;
    }

    public String getUrlNotificacao() {
        return urlNotificacao;
    }

    public void setUrlNotificacao(String urlNotificacao) {
        this.urlNotificacao = urlNotificacao;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final DadosPagamento other = (DadosPagamento) obj;
        if (!Objects.equals(this.totalItem, other.totalItem)) {
            return false;
        }
        if (!Objects.equals(this.descricao, other.descricao)) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 97 * hash + Objects.hashCode(this.totalItem);
        hash = 97 * hash + Objects.hashCode(this.descricao);
        return hash;
    }

    @Override
    public String toString() {
        return "ItemCompra{" + "totalItem=" + totalItem + ", totalEntrega=" + totalEntrega + ", totalSeguro=" + totalSeguro + ", totalDescontoEntrega=" + totalDescontoEntrega + ", totalImposto=" + totalImposto + ", totalManuseio=" + totalManuseio + ", descricao=" + descricao + ", textoCustomizado=" + textoCustomizado + ", nroPedido=" + nroPedido + ", urlNotificacao=" + urlNotificacao + ", nota=" + nota + '}';
    }
}
