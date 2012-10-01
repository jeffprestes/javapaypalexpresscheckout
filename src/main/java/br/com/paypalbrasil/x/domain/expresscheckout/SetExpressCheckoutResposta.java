/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain.expresscheckout;

import br.com.paypalbrasil.x.domain.CabecalhoResposta;
import br.com.paypalbrasil.x.domain.Resposta;
import java.util.Objects;

/**
 * Representa a resposta a chamada ao WebService SetExpressCheckout
 * @author jprestes
 */
public class SetExpressCheckoutResposta extends Resposta    {

    private String token;
    private ErroResposta erro;

    public SetExpressCheckoutResposta(CabecalhoResposta envelope) {
        super(envelope);
    }

    public SetExpressCheckoutResposta() {
        super();
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public ErroResposta getErro() {
        return erro;
    }

    public void setErro(ErroResposta erro) {
        this.erro = erro;
    }
    
    
    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final SetExpressCheckoutResposta other = (SetExpressCheckoutResposta) obj;
        if (!Objects.equals(this.token, other.token)) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 83 * hash + Objects.hashCode(this.token);
        return hash;
    }

    @Override
    public String toString() {
        return "SetExpressCheckoutResposta{" + "token=" + token + ", Resposta: " + super.toString() + '}';
    }

    
}
