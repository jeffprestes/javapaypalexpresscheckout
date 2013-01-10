/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain.adaptive;

/**
 * Classe que armazena detalhes do cliente (dispositivo, browser, etc, do
 * usuario da loja).
 *
 * @author jeffprestes
 */
public class DetalhesCliente {

    private String idAplicacao;
    private String enderecoIp;

    /**
     * Construtor com os parametros mínimos recomendados
     *
     * @param idAplicacao Pode ser uma chave que identifica a loja da plaforma
     * que o cliente estava ou o browser. Depende da necessidade da plataforma.
     * @param enderecoIp Endereço IP do cliente final.
     */
    public DetalhesCliente(String idAplicacao, String enderecoIp) {
        this.idAplicacao = idAplicacao;
        this.enderecoIp = enderecoIp;
    }

    public String getEnderecoIp() {
        return enderecoIp;
    }

    public void setEnderecoIp(String enderecoIp) {
        this.enderecoIp = enderecoIp;
    }

    public String getIdAplicacao() {
        return idAplicacao;
    }

    public void setIdAplicacao(String idAplicacao) {
        this.idAplicacao = idAplicacao;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final DetalhesCliente other = (DetalhesCliente) obj;
        if ((this.idAplicacao == null) ? (other.idAplicacao != null) : !this.idAplicacao.equals(other.idAplicacao)) {
            return false;
        }
        if ((this.enderecoIp == null) ? (other.enderecoIp != null) : !this.enderecoIp.equals(other.enderecoIp)) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        return hash;
    }

    @Override
    public String toString() {
        return "DetalhesCliente{" + "idAplicacao=" + idAplicacao + ", enderecoIp=" + enderecoIp + '}';
    }
}
