/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain.expresscheckout;

import java.util.Objects;

/**
 * Armazena dados sobre a entrega dos itens.
 *
 * @author jprestes
 */
public class DadosEntrega {

    private String tipoEntrega;
    private String nomeEntrega;
    private String enderecoEntrega;
    private String complementoEnderecoEntrega;
    private String cidadeEntrega;
    private String estadoEntrega;
    private String cepEntrega;
    private String codPaisEntrega;
    private String nomePaisEntrega;
    private String telefoneEntrega;
    private String statusEnderecoEntrega;

    public String getCepEntrega() {
        return cepEntrega;
    }

    public void setCepEntrega(String cepEntrega) {
        this.cepEntrega = cepEntrega;
    }

    public String getCidadeEntrega() {
        return cidadeEntrega;
    }

    public void setCidadeEntrega(String cidadeEntrega) {
        this.cidadeEntrega = cidadeEntrega;
    }

    public String getComplementoEnderecoEntrega() {
        return complementoEnderecoEntrega;
    }

    public void setComplementoEnderecoEntrega(String complementoEnderecoEntrega) {
        this.complementoEnderecoEntrega = complementoEnderecoEntrega;
    }

    public String getEnderecoEntrega() {
        return enderecoEntrega;
    }

    public void setEnderecoEntrega(String enderecoEntrega) {
        this.enderecoEntrega = enderecoEntrega;
    }

    public String getEstadoEntrega() {
        return estadoEntrega;
    }

    public void setEstadoEntrega(String estadoEntrega) {
        this.estadoEntrega = estadoEntrega;
    }

    public String getNomeEntrega() {
        return nomeEntrega;
    }

    public void setNomeEntrega(String nomeEntrega) {
        this.nomeEntrega = nomeEntrega;
    }

    public String getStatusEnderecoEntrega() {
        return statusEnderecoEntrega;
    }

    public void setStatusEnderecoEntrega(String statusEnderecoEntrega) {
        this.statusEnderecoEntrega = statusEnderecoEntrega;
    }

    public String getTelefoneEntrega() {
        return telefoneEntrega;
    }

    public void setTelefoneEntrega(String telefoneEntrega) {
        this.telefoneEntrega = telefoneEntrega;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final DadosEntrega other = (DadosEntrega) obj;
        if (!Objects.equals(this.nomeEntrega, other.nomeEntrega)) {
            return false;
        }
        if (!Objects.equals(this.enderecoEntrega, other.enderecoEntrega)) {
            return false;
        }
        if (!Objects.equals(this.complementoEnderecoEntrega, other.complementoEnderecoEntrega)) {
            return false;
        }
        if (!Objects.equals(this.cidadeEntrega, other.cidadeEntrega)) {
            return false;
        }
        if (!Objects.equals(this.estadoEntrega, other.estadoEntrega)) {
            return false;
        }
        if (!Objects.equals(this.cepEntrega, other.cepEntrega)) {
            return false;
        }
        if (!Objects.equals(this.codPaisEntrega, other.codPaisEntrega)) {
            return false;
        }
        if (!Objects.equals(this.nomePaisEntrega, other.nomePaisEntrega)) {
            return false;
        }
        if (!Objects.equals(this.telefoneEntrega, other.telefoneEntrega)) {
            return false;
        }
        if (!Objects.equals(this.statusEnderecoEntrega, other.statusEnderecoEntrega)) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 73 * hash + Objects.hashCode(this.nomeEntrega);
        hash = 73 * hash + Objects.hashCode(this.enderecoEntrega);
        hash = 73 * hash + Objects.hashCode(this.complementoEnderecoEntrega);
        hash = 73 * hash + Objects.hashCode(this.cidadeEntrega);
        hash = 73 * hash + Objects.hashCode(this.estadoEntrega);
        hash = 73 * hash + Objects.hashCode(this.cepEntrega);
        return hash;
    }

    @Override
    public String toString() {
        return "DadosEntrega{" + "nomeEntrega=" + nomeEntrega + ", enderecoEntrega=" + enderecoEntrega + ", complementoEnderecoEntrega=" + complementoEnderecoEntrega + ", cidadeEntrega=" + cidadeEntrega + ", estadoEntrega=" + estadoEntrega + ", cepEntrega=" + cepEntrega + ", codPaisEntrega=" + codPaisEntrega + ", nomePaisEntrega=" + nomePaisEntrega + ", telefoneEntrega=" + telefoneEntrega + ", statusEnderecoEntrega=" + statusEnderecoEntrega + '}';
    }

    /**
     * @return the codPaisEntrega
     */
    public String getCodPaisEntrega() {
        return codPaisEntrega;
    }

    /**
     * @param codPaisEntrega the codPaisEntrega to set
     */
    public void setCodPaisEntrega(String codPaisEntrega) {
        this.codPaisEntrega = codPaisEntrega;
    }

    /**
     * @return the nomePaisEntrega
     */
    public String getNomePaisEntrega() {
        return nomePaisEntrega;
    }

    /**
     * @param nomePaisEntrega the nomePaisEntrega to set
     */
    public void setNomePaisEntrega(String nomePaisEntrega) {
        this.nomePaisEntrega = nomePaisEntrega;
    }

    /**
     * @return the tipoEntrega
     */
    public String getTipoEntrega() {
        return tipoEntrega;
    }

    /**
     * @param tipoEntrega the tipoEntrega to set
     */
    public void setTipoEntrega(String tipoEntrega) {
        this.tipoEntrega = tipoEntrega;
    }
}
