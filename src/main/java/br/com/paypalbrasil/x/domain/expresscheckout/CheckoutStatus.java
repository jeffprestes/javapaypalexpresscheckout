/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain.expresscheckout;

/**
 * Possiveis status do checkout
 *
 * @author jprestes
 */
public enum CheckoutStatus {

    PaymentActionNotInitiated, PaymentActionFailed, PaymentActionInProgress, PaymentActionCompleted
}
