/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain.expresscheckout;

import br.com.paypalbrasil.x.domain.CabecalhoResposta;
import br.com.paypalbrasil.x.domain.Resposta;
import java.util.List;
import java.util.Objects;
/**
 *
 * @author aalonso
 */
public class CreateRecurringPaymentsProfileResposta extends Resposta {
    
    private String profileId;
    private String profileStatus;
    private String timestamp;
    private String correlationId;
    private String ack;
    private String build;
    private ErroResposta erro;
    
     public CreateRecurringPaymentsProfileResposta() {
         super();
    }

    public CreateRecurringPaymentsProfileResposta(CabecalhoResposta cabecalho) {
        super(cabecalho);
    }

    /**
     * @return the profileId
     */
    public String getProfileId() {
        return profileId;
    }

    /**
     * @param profileId the profileId to set
     */
    public void setProfileId(String profileId) {
        this.profileId = profileId;
    }

    /**
     * @return the profileStatus
     */
    public String getProfileStatus() {
        return profileStatus;
    }

    /**
     * @param profileStatus the profileStatus to set
     */
    public void setProfileStatus(String profileStatus) {
        this.profileStatus = profileStatus;
    }

    /**
     * @return the timestamp
     */
    public String getTimestamp() {
        return timestamp;
    }

    /**
     * @param timestamp the timestamp to set
     */
    public void setTimestamp(String timestamp) {
        this.timestamp = timestamp;
    }

    /**
     * @return the correlationId
     */
    public String getCorrelationId() {
        return correlationId;
    }

    /**
     * @param correlationId the correlationId to set
     */
    public void setCorrelationId(String correlationId) {
        this.correlationId = correlationId;
    }

    /**
     * @return the ack
     */
    public String getAck() {
        return ack;
    }

    /**
     * @param ack the ack to set
     */
    public void setAck(String ack) {
        this.ack = ack;
    }

    /**
     * @return the build
     */
    public String getBuild() {
        return build;
    }

    /**
     * @param build the build to set
     */
    public void setBuild(String build) {
        this.build = build;
    }
    
    public ErroResposta getErro() {
        return erro;
    }

    public void setErro(ErroResposta erro) {
        this.erro = erro;
    }
    

    @Override
    public String toString() {
        return "CreateRecurringPaymentsProfileResposta{" + "ProfileID=" + profileId +", ProfileStatus=" + profileStatus +", Timestamp=" + timestamp +", CorrelationID=" + correlationId +", Build=" + build +", ACK=" + ack +", Erro=" + erro + ", Resposta: " + super.toString() + '}';
    }
    
    
}
