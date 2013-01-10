/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.interfaces;

import br.com.paypalbrasil.x.domain.Resposta;

/**
 * Interface que define as acoes de parse da resposta do PayPal
 *
 * @author jprestes
 */
public interface Parser {

    /**
     * Realiza o parse de uma resposta bruta vinda do PayPal
     *
     * @param respostaBruta string de resposta pura, sem tratamento, do retorno
     * vindo do PayPal
     * @return POJO preenchido com resposta.
     */
    public Resposta parse(String respostaBruta);
}
