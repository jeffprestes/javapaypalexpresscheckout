/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain;

/**
 *
 * @author aalonso
 */
public class Temporario {
    
    private String amt;
    private String billingFrequency;
    private String billingPeriod;
    
    public Temporario(String amt,String billingFrequency, String billingPeriod) {
        this.setAmt(amt);
        this.setBillingFrequency(billingFrequency);
        this.setBillingPeriod(billingPeriod);
    }

    /**
     * @return the amt
     */
    public String getAmt() {
        return amt;
    }

    /**
     * @param amt the amt to set
     */
    public void setAmt(String amt) {
        this.amt = amt;
    }

    /**
     * @return the billingFrequency
     */
    public String getBillingFrequency() {
        return billingFrequency;
    }

    /**
     * @param billingFrequency the billingFrequency to set
     */
    public void setBillingFrequency(String billingFrequency) {
        this.billingFrequency = billingFrequency;
    }

    /**
     * @return the billingPeriod
     */
    public String getBillingPeriod() {
        return billingPeriod;
    }

    /**
     * @param billingPeriod the billingPeriod to set
     */
    public void setBillingPeriod(String billingPeriod) {
        this.billingPeriod = billingPeriod;
    }
    
}
