/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain.expresscheckout;

import br.com.paypalbrasil.x.domain.CategoriaItem;
import java.util.Objects;

/**
 * Armazena detalhes sobe o item de venda
 * @author jprestes
 */
public class ItemVenda {
    
    private String nome;
    private String descricao;
    private String total;
    private CategoriaItem categoria;
    private int quantidade;

    public ItemVenda() {
    }

    public CategoriaItem getCategoria() {
        return categoria;
    }

    public void setCategoria(CategoriaItem categoria) {
        this.categoria = categoria;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }
    
    

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final ItemVenda other = (ItemVenda) obj;
        if (!Objects.equals(this.nome, other.nome)) {
            return false;
        }
        if (!Objects.equals(this.descricao, other.descricao)) {
            return false;
        }
        if (!Objects.equals(this.total, other.total)) {
            return false;
        }
        if (this.categoria != other.categoria) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 29 * hash + Objects.hashCode(this.nome);
        hash = 29 * hash + Objects.hashCode(this.descricao);
        hash = 29 * hash + Objects.hashCode(this.total);
        hash = 29 * hash + (this.categoria != null ? this.categoria.hashCode() : 0);
        return hash;
    }

    @Override
    public String toString() {
        return "ItemVenda{" + "nome=" + nome + ", descricao=" + descricao + ", qtde: " + quantidade + ", total=" + total + ", categoria=" + categoria + '}';
    }
    
    
}
