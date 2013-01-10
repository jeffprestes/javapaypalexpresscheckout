/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain.adaptive;

import br.com.paypalbrasil.x.domain.adaptive.Recebedor;
import java.util.List;

/**
 * Classe que armazena os valores de possíveis erros de pagamento retornados
 * pelos WebServices da PayPal por Recebedor.
 *
 * @author jeffprestes
 */
public class ErroPagamento {

    private Recebedor recebedor;
    private Erro erro;

    /**
     * Construtor da classe.
     */
    public ErroPagamento() {
    }

    /**
     * Construtor da classe com todos os campos.
     *
     * @param recebedor
     * @param erro
     */
    public ErroPagamento(Recebedor recebedor, Erro erro) {
        this.recebedor = recebedor;
        this.erro = erro;
    }

    public Erro getErro() {
        return erro;
    }

    public void setErro(Erro erro) {
        this.erro = erro;
    }

    public Recebedor getRecebedor() {
        return recebedor;
    }

    public void setRecebedor(Recebedor recebedor) {
        this.recebedor = recebedor;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final ErroPagamento other = (ErroPagamento) obj;
        if (this.recebedor != other.recebedor && (this.recebedor == null || !this.recebedor.equals(other.recebedor))) {
            return false;
        }
        if (this.erro != other.erro && (this.erro == null || !this.erro.equals(other.erro))) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 59 * hash + (this.recebedor != null ? this.recebedor.hashCode() : 0);
        hash = 59 * hash + (this.erro != null ? this.erro.hashCode() : 0);
        return hash;
    }
}
