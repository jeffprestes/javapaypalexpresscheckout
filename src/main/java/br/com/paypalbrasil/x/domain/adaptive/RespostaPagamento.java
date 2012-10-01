/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain.adaptive;

import br.com.paypalbrasil.x.domain.Resposta;
import br.com.paypalbrasil.x.domain.CabecalhoResposta;

/**
 * Classe que representa a resposta ao metedo PAY dos WebServices do Adaptive
 * Payments do PayPal.
 * @author jeffprestes
 */
public class RespostaPagamento extends Resposta    {
    
    private String chavePagamento;
    private StatusExecucaoPagamemto statusExecucaoPagamento;
    
    public RespostaPagamento()  {
        super();
    }

    /**
     * Construtor com todos os campos da classe.
     * @param chavePagamento
     * @param statusExecucaoPagamento 
     * @param cabecalho 
     */
    public RespostaPagamento(String chavePagamento, StatusExecucaoPagamemto statusExecucaoPagamento, CabecalhoResposta envelope) {
        super(envelope);
        this.chavePagamento = chavePagamento;
        this.statusExecucaoPagamento = statusExecucaoPagamento;
    }

    public String getChavePagamento() {
        return chavePagamento;
    }

    public void setChavePagamento(String chavePagamento) {
        this.chavePagamento = chavePagamento;
    }

    public StatusExecucaoPagamemto getStatusExecucaoPagamento() {
        return statusExecucaoPagamento;
    }

    public void setStatusExecucaoPagamento(StatusExecucaoPagamemto statusExecucaoPagamento) {
        this.statusExecucaoPagamento = statusExecucaoPagamento;
    }

    
    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final RespostaPagamento other = (RespostaPagamento) obj;
        if ((this.chavePagamento == null) ? (other.chavePagamento != null) : !this.chavePagamento.equals(other.chavePagamento)) {
            return false;
        }
        if (this.statusExecucaoPagamento != other.statusExecucaoPagamento) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 83 * hash + (this.chavePagamento != null ? this.chavePagamento.hashCode() : 0);
        hash = 83 * hash + (this.statusExecucaoPagamento != null ? this.statusExecucaoPagamento.hashCode() : 0);
        return hash;
    }

    @Override
    public String toString() {
        return "RespostaPagamento{" + "chavePagamento=" + chavePagamento + ", statusExecucaoPagamento=" + statusExecucaoPagamento + ", envelopeResposta=" + cabecalho.toString() + "}";
    }
    
    
    
}
