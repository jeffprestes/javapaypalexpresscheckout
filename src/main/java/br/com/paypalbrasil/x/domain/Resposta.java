/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain;

import br.com.paypalbrasil.x.domain.CabecalhoResposta;
import java.util.Objects;

/**
 * Classe generica que armazena as respostas vindas dos WebServices do Adaptive
 * Payments do PayPal.
 *
 * @author jeffprestes
 */
public class Resposta {

    /**
     * Envelope de resposta
     */
    protected CabecalhoResposta cabecalho;
    protected String versao;

    public Resposta() {
    }

    public Resposta(CabecalhoResposta envelope) {
        this.setCabecalho(envelope);
    }

    public CabecalhoResposta getCabecalho() {
        return cabecalho;
    }

    public void setCabecalho(CabecalhoResposta cabecalho) {
        this.cabecalho = cabecalho;
    }

    public String getVersao() {
        return versao;
    }

    public void setVersao(String versao) {
        this.versao = versao;
    }

    public CabecalhoResposta getEnvelope() {
        return this.getCabecalho();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Resposta other = (Resposta) obj;
        if (!Objects.equals(this.cabecalho, other.cabecalho)) {
            return false;
        }
        if (!Objects.equals(this.versao, other.versao)) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 97 * hash + Objects.hashCode(this.cabecalho);
        hash = 97 * hash + Objects.hashCode(this.versao);
        return hash;
    }

    @Override
    public String toString() {
        return "Resposta{" + "cabecalho=" + cabecalho + ", versao=" + versao + '}';
    }
}
