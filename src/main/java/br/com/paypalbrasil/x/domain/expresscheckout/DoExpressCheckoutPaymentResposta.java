/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain.expresscheckout;

import br.com.paypalbrasil.x.domain.CabecalhoResposta;
import br.com.paypalbrasil.x.domain.Resposta;
import java.util.Objects;

/**
 *
 * @author aalonso
 */
public class DoExpressCheckoutPaymentResposta extends Resposta {

    private String token;
    private ErroResposta erro;
    private String paymentStatus;
    private String pendingReason;
    private String reasonCode;

    public DoExpressCheckoutPaymentResposta(CabecalhoResposta envelope) {
        super(envelope);
    }

    public DoExpressCheckoutPaymentResposta() {
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
        final br.com.paypalbrasil.x.domain.expresscheckout.DoExpressCheckoutPaymentResposta other = (br.com.paypalbrasil.x.domain.expresscheckout.DoExpressCheckoutPaymentResposta) obj;
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
        return "DoExpressCheckoutPaymentResposta{" + "token=" + token + ", Resposta: " + super.toString() + '}';
    }

    /**
     * @return the paymentStatus
     */
    public String getPaymentStatus() {
        return paymentStatus;
    }

    /**
     * @param paymentStatus the paymentStatus to set
     */
    public void setPaymentStatus(String paymentStatus) {
        this.paymentStatus = paymentStatus;
    }

    /**
     * @return the pendingReason
     */
    public String getPendingReason() {
        return pendingReason;
    }

    /**
     * @param pendingReason the pendingReason to set
     */
    public void setPendingReason(String pendingReason) {
        this.pendingReason = pendingReason;
    }

    /**
     * @return the reasonCode
     */
    public String getReasonCode() {
        return reasonCode;
    }

    /**
     * @param reasonCode the reasonCode to set
     */
    public void setReasonCode(String reasonCode) {
        this.reasonCode = reasonCode;
    }
}
