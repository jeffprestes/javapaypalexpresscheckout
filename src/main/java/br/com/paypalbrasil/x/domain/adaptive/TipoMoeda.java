/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain.adaptive;

import br.com.paypalbrasil.x.domain.adaptive.CodigoMoeda;
import java.math.BigDecimal;

/**
 * Classe que representa um valor total dentro de uma determinada moeda.
 * @author jeffprestes
 */
public class TipoMoeda {
    
    private CodigoMoeda moeda;
    private BigDecimal total;

    /**
     * Construtor com todos os campos.
     * @param moeda
     * @param total 
     */
    public TipoMoeda(CodigoMoeda moeda, BigDecimal total) {
        this.moeda = moeda;
        this.total = total;
    }

    public TipoMoeda() {
    }

    public CodigoMoeda getMoeda() {
        return moeda;
    }

    public void setMoeda(CodigoMoeda moeda) {
        this.moeda = moeda;
    }

    public BigDecimal getTotal() {
        return total;
    }

    public void setTotal(BigDecimal total) {
        this.total = total;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final TipoMoeda other = (TipoMoeda) obj;
        if (this.moeda != other.moeda) {
            return false;
        }
        if (this.total != other.total && (this.total == null || !this.total.equals(other.total))) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 17 * hash + (this.moeda != null ? this.moeda.hashCode() : 0);
        hash = 17 * hash + (this.total != null ? this.total.hashCode() : 0);
        return hash;
    }
    
    
}
