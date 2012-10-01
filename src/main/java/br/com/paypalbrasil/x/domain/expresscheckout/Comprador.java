/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain.expresscheckout;

import br.com.paypalbrasil.x.domain.StatusPagador;
import java.util.Objects;

/**
 * Armazena dados do Comprador
 * @author jprestes
 */
public class Comprador {
    
    private String emailComprador;
    private String emailCompradorMarketing;
    private String payerId;
    private StatusPagador statusPagador;
    private String paisComprador;
    private String nomeCompradorNegocio;
    private String saudacao;
    private String primeiroNome;
    private String nomeDoMeio;
    private String ultimoNome;
    private String sufixoNome;
    private TipoRegistroReceita tipoRegistroReceita;
    private String nroRegistroReceita;

    public String getEmailComprador() {
        return emailComprador;
    }

    public void setEmailComprador(String emailComprador) {
        this.emailComprador = emailComprador;
    }

    public String getEmailCompradorMarketing() {
        return emailCompradorMarketing;
    }

    public void setEmailCompradorMarketing(String emailCompradorMarketing) {
        this.emailCompradorMarketing = emailCompradorMarketing;
    }

    
    public String getNomeCompradorNegocio() {
        return nomeCompradorNegocio;
    }

    public void setNomeCompradorNegocio(String nomeCompradorNegocio) {
        this.nomeCompradorNegocio = nomeCompradorNegocio;
    }

    public String getNomeDoMeio() {
        return nomeDoMeio;
    }

    public void setNomeDoMeio(String nomeDoMeio) {
        this.nomeDoMeio = nomeDoMeio;
    }

    public String getPaisComprador() {
        return paisComprador;
    }

    public void setPaisComprador(String paisComprador) {
        this.paisComprador = paisComprador;
    }

    public String getPayerId() {
        return payerId;
    }

    public void setPayerId(String payerId) {
        this.payerId = payerId;
    }

    public String getPrimeiroNome() {
        return primeiroNome;
    }

    public void setPrimeiroNome(String primeiroNome) {
        this.primeiroNome = primeiroNome;
    }

    public String getSaudacao() {
        return saudacao;
    }

    public void setSaudacao(String saudacao) {
        this.saudacao = saudacao;
    }

    public StatusPagador getStatusPagador() {
        return statusPagador;
    }

    public void setStatusPagador(StatusPagador statusPagador) {
        this.statusPagador = statusPagador;
    }

    public String getSufixoNome() {
        return sufixoNome;
    }

    public void setSufixoNome(String sufixoNome) {
        this.sufixoNome = sufixoNome;
    }

    public String getUltimoNome() {
        return ultimoNome;
    }

    public void setUltimoNome(String ultimoNome) {
        this.ultimoNome = ultimoNome;
    }

    public String getNroRegistroReceita() {
        return nroRegistroReceita;
    }

    public void setNroRegistroReceita(String nroRegistroReceita) {
        this.nroRegistroReceita = nroRegistroReceita;
    }

    public TipoRegistroReceita getTipoRegistroReceita() {
        return tipoRegistroReceita;
    }

    public void setTipoRegistroReceita(TipoRegistroReceita tipoRegistroReceita) {
        this.tipoRegistroReceita = tipoRegistroReceita;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Comprador other = (Comprador) obj;
        if (!Objects.equals(this.emailComprador, other.emailComprador)) {
            return false;
        }
        if (!Objects.equals(this.payerId, other.payerId)) {
            return false;
        }
        if (this.statusPagador != other.statusPagador) {
            return false;
        }
        if (!Objects.equals(this.paisComprador, other.paisComprador)) {
            return false;
        }
        if (!Objects.equals(this.primeiroNome, other.primeiroNome)) {
            return false;
        }
        if (!Objects.equals(this.ultimoNome, other.ultimoNome)) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 83 * hash + Objects.hashCode(this.emailComprador);
        hash = 83 * hash + Objects.hashCode(this.payerId);
        hash = 83 * hash + (this.statusPagador != null ? this.statusPagador.hashCode() : 0);
        hash = 83 * hash + Objects.hashCode(this.paisComprador);
        hash = 83 * hash + Objects.hashCode(this.nomeCompradorNegocio);
        hash = 83 * hash + Objects.hashCode(this.primeiroNome);
        hash = 83 * hash + Objects.hashCode(this.ultimoNome);
        return hash;
    }

    @Override
    public String toString() {
        return "Comprador{" + "emailComprador=" + emailComprador + ", payerId=" + payerId + ", statusPagador=" + statusPagador + ", paisComprador=" + paisComprador + ", nomeCompradorNegocio=" + nomeCompradorNegocio + ", saudacao=" + saudacao + ", primeiroNome=" + primeiroNome + ", nomeDoMeio=" + nomeDoMeio + ", ultimoNome=" + ultimoNome + ", sufixoNome=" + sufixoNome + ", tipoRegistroReceita=" + tipoRegistroReceita + ", nroRegistroReceita=" + nroRegistroReceita + '}';
    }

    
    
    
}
