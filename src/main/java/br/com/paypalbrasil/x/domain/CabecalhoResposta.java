/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain;

import br.com.paypalbrasil.x.domain.CodigoACK;
import java.util.Date;

/**
 * Classe que representa o cabecalho/envelope de resposta retornado pela 
 * PayPal após chamadas aos seus WebServices 
 * @author jeffprestes
 */
public class CabecalhoResposta {
    
    private String timestamp;
    private CodigoACK ack;
    private String idCorrelacao;
    private String build;

    /**
     * Construtor com todos os valores deste POJO
     * @param timestamp Dia e horário em que o WebService foi chamado.
     * @param ack Codigo de ACK retornado pelo sistema PayPal
     * @param idCorrelacao ID de Correlação utilizado pelo suporte MTS PayPal na
     * resolução de problemas.
     * @param build A versão do sistema PayPal quando o WebService foi chamado.
     */
    public CabecalhoResposta(String timestamp, CodigoACK ack, String idCorrelacao, String build) {
        this.timestamp = timestamp;
        this.ack = ack;
        this.idCorrelacao = idCorrelacao;
        this.build = build;
    }
    
    /**
     * Construtor vazio.
     */
    public CabecalhoResposta()   {
        
    }

    public CodigoACK getAck() {
        return ack;
    }

    public void setAck(CodigoACK ack) {
        this.ack = ack;
    }

    public String getBuild() {
        return build;
    }

    public void setBuild(String build) {
        this.build = build;
    }

    public String getIdCorrelacao() {
        return idCorrelacao;
    }

    public void setIdCorrelacao(String idCorrelacao) {
        this.idCorrelacao = idCorrelacao;
    }

    public String getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(String timestamp) {
        this.timestamp = timestamp;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final CabecalhoResposta other = (CabecalhoResposta) obj;
        if (this.timestamp != other.timestamp && (this.timestamp == null || !this.timestamp.equals(other.timestamp))) {
            return false;
        }
        if (this.ack != other.ack) {
            return false;
        }
        if ((this.idCorrelacao == null) ? (other.idCorrelacao != null) : !this.idCorrelacao.equals(other.idCorrelacao)) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 83 * hash + (this.timestamp != null ? this.timestamp.hashCode() : 0);
        hash = 83 * hash + (this.ack != null ? this.ack.hashCode() : 0);
        hash = 83 * hash + (this.idCorrelacao != null ? this.idCorrelacao.hashCode() : 0);
        return hash;
    }

    @Override
    public String toString() {
        return "EnvelopeResposta{" + "timestamp=" + timestamp + ", ack=" + ack + ", idCorrelacao=" + idCorrelacao + ", build=" + build + '}';
    }
    
    
    
}
