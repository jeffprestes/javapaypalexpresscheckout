/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain.adaptive;

/**
 *
 * @author jeffprestes
 */
public class Recebedor {
    
    private double valor;
    private String email;
    private boolean primario;
    private String notafiscal;
    private String tipoPagamento;
    private String subtipoPagamento;
    

    public Recebedor(double valor, String email, boolean primario) {
        this.setValor(valor);
        this.setEmail(email);
        this.setPrimario(primario);
    }
    

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNotafiscal() {
        return notafiscal;
    }

    public void setNotafiscal(String notafiscal) {
        this.notafiscal = notafiscal;
    }

    public boolean isPrimario() {
        return primario;
    }

    public void setPrimario(boolean primario) {
        this.primario = primario;
    }

    public String getSubtipoPagamento() {
        return subtipoPagamento;
    }

    public void setSubtipoPagamento(String subtipoPagamento) {
        this.subtipoPagamento = subtipoPagamento;
    }

    public String getTipoPagamento() {
        return tipoPagamento;
    }

    public void setTipoPagamento(String tipoPagamento) {
        this.tipoPagamento = tipoPagamento;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Recebedor other = (Recebedor) obj;
        if (Double.doubleToLongBits(this.valor) != Double.doubleToLongBits(other.valor)) {
            return false;
        }
        if ((this.email == null) ? (other.email != null) : !this.email.equals(other.email)) {
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
        return "Recebedor{" + "valor=" + valor + ", email=" + email + ", primario=" + primario + ", notafiscal=" + notafiscal + ", tipoPagamento=" + tipoPagamento + ", subtipoPagamento=" + subtipoPagamento + '}';
    }
    
   
    
}
