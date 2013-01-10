/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain.adaptive;

/**
 * Classe que armazena os erros retornados pelos WebServices da PayPal
 *
 * @author jeffprestes
 */
public class Erro {

    private long idErro;
    private String dominio;
    private String severidade;
    private String categoria;
    private String mensagem;
    private String idExcecao;
    private String parametroErro;

    public Erro() {
    }

    /**
     * Construtor com todos os campos da classe.
     *
     * @param idErro
     * @param dominio
     * @param severidade
     * @param categoria
     * @param mensagem
     * @param idExcecao
     * @param parametroErro
     */
    public Erro(long idErro, String dominio, String severidade, String categoria, String mensagem, String idExcecao, String parametroErro) {
        this.idErro = idErro;
        this.dominio = dominio;
        this.severidade = severidade;
        this.categoria = categoria;
        this.mensagem = mensagem;
        this.idExcecao = idExcecao;
        this.parametroErro = parametroErro;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getDominio() {
        return dominio;
    }

    public void setDominio(String dominio) {
        this.dominio = dominio;
    }

    public long getIdErro() {
        return idErro;
    }

    public void setIdErro(long idErro) {
        this.idErro = idErro;
    }

    public String getIdExcecao() {
        return idExcecao;
    }

    public void setIdExcecao(String idExcecao) {
        this.idExcecao = idExcecao;
    }

    public String getMensagem() {
        return mensagem;
    }

    public void setMensagem(String mensagem) {
        this.mensagem = mensagem;
    }

    public String getParametroErro() {
        return parametroErro;
    }

    public void setParametroErro(String parametroErro) {
        this.parametroErro = parametroErro;
    }

    public String getSeveridade() {
        return severidade;
    }

    public void setSeveridade(String severidade) {
        this.severidade = severidade;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Erro other = (Erro) obj;
        if (this.idErro != other.idErro) {
            return false;
        }
        if ((this.dominio == null) ? (other.dominio != null) : !this.dominio.equals(other.dominio)) {
            return false;
        }
        if ((this.severidade == null) ? (other.severidade != null) : !this.severidade.equals(other.severidade)) {
            return false;
        }
        if ((this.categoria == null) ? (other.categoria != null) : !this.categoria.equals(other.categoria)) {
            return false;
        }
        if ((this.mensagem == null) ? (other.mensagem != null) : !this.mensagem.equals(other.mensagem)) {
            return false;
        }
        if ((this.idExcecao == null) ? (other.idExcecao != null) : !this.idExcecao.equals(other.idExcecao)) {
            return false;
        }
        if ((this.parametroErro == null) ? (other.parametroErro != null) : !this.parametroErro.equals(other.parametroErro)) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 41 * hash + (int) (this.idErro ^ (this.idErro >>> 32));
        hash = 41 * hash + (this.dominio != null ? this.dominio.hashCode() : 0);
        hash = 41 * hash + (this.severidade != null ? this.severidade.hashCode() : 0);
        hash = 41 * hash + (this.categoria != null ? this.categoria.hashCode() : 0);
        hash = 41 * hash + (this.mensagem != null ? this.mensagem.hashCode() : 0);
        hash = 41 * hash + (this.idExcecao != null ? this.idExcecao.hashCode() : 0);
        hash = 41 * hash + (this.parametroErro != null ? this.parametroErro.hashCode() : 0);
        return hash;
    }
}
