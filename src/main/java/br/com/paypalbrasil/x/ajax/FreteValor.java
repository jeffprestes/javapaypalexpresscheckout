/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.ajax;

/**
 *
 * @author aalonso
 */
public class FreteValor {
    
    private FreteData[] itens;
    private float total;
    private String nomeEntrega="FreteFacil";

    /**
     * @return the itens
     */
    public FreteData[] getItens() {
        return itens;
    }

    /**
     * @param itens the itens to set
     */
    public void setItens(FreteData item, FreteData item2) {
        itens = new FreteData[2];
        this.itens[0] = item; 
        this.itens[1] = item2;
    }

    /**
     * @return the total
     */
    public float getTotal() {
        return total;
    }

    /**
     * @param total the total to set
     */
    public void setTotal() {
        total = itens[0].getValorEntrega() + itens[1].getValorEntrega();
    }

    /**
     * @return the nomeEntrega
     */
    public String getNomeEntrega() {
        return nomeEntrega;
    }
    
    
}
