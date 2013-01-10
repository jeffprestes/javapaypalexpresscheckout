/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain;

/**
 * Classe que armazena as credenciais da plataforma junto ao PayPal
 *
 * @author jeffprestes
 */
public class Credenciais {

    private String usuario;
    private String senha;
    private String assinatura;
    private String appId;

    /**
     * Construtor da classe que recebe informações básicas de credenciais
     *
     * @param usuario Campo que armazena o valor X-PAYPAL-SECURITY-USERID ou
     * USER
     * @param senha Campo que armazena o valor X-PAYPAL-SECURITY-PASSWORD ou PWD
     * @param assinatura Campo que armazena o valor X-PAYPAL-SECURITY-SIGNATURE
     * ou SIGNATURE
     */
    public Credenciais(String usuario, String senha, String assinatura) {
        this.setUsuario(usuario);
        this.setSenha(senha);
        this.setAssinatura(assinatura);
    }

    /**
     * Construtor da classe que recebe informações básicas de credenciais e
     * com o ID da aplicação
     *
     * @param usuario Campo que armazena o valor X-PAYPAL-SECURITY-USERID ou
     * USER
     * @param senha Campo que armazena o valor X-PAYPAL-SECURITY-PASSWORD ou PWD
     * @param assinatura Campo que armazena o valor X-PAYPAL-SECURITY-SIGNATURE
     * ou SIGNATURE
     * @param appId Campo que armazena o valor X-PAYPAL-APPLICATION-ID, usado
     * somente em aplicacoes Adaptive
     */
    public Credenciais(String usuario, String senha, String assinatura, String appId) {
        this(usuario, senha, assinatura);
        this.setAppId(appId);
    }

    public String getAppId() {
        return appId;
    }

    public void setAppId(String appId) {
        this.appId = appId;
    }

    public String getAssinatura() {
        return assinatura;
    }

    public void setAssinatura(String assinatura) {
        this.assinatura = assinatura;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Credenciais other = (Credenciais) obj;
        if ((this.usuario == null) ? (other.usuario != null) : !this.usuario.equals(other.usuario)) {
            return false;
        }
        if ((this.senha == null) ? (other.senha != null) : !this.senha.equals(other.senha)) {
            return false;
        }
        if ((this.assinatura == null) ? (other.assinatura != null) : !this.assinatura.equals(other.assinatura)) {
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
        return "Credenciais{" + "usuario=" + usuario + ", senha=" + senha + ", assinatura=" + assinatura + ", appId=" + appId + '}';
    }
}
