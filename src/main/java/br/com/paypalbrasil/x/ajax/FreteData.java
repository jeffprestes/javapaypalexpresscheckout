/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.ajax;

/**
 *
 * @author aalonso
 */
public class FreteData {

    private String cepOrigem = "01419001";
    private String cepDestino;
    private int largura;
    private int altura;
    private int profundidade;
    private float peso;
    private float valorEntrega;

    /**
     * @return the cepOrigem
     */
    public String getCepOrigem() {
        return cepOrigem;
    }

    /**
     * @param cepOrigem the cepOrigem to set
     */
    public void setCepOrigem(String cepOrigem) {
        this.cepOrigem = cepOrigem;
    }

    /**
     * @return the cepDestino
     */
    public String getCepDestino() {
        return cepDestino;
    }

    /**
     * @param cepDestino the cepDestino to set
     */
    public void setCepDestino(String cepDestino) {
        this.cepDestino = cepDestino;
    }

    /**
     * @return the largura
     */
    public int getLargura() {
        return largura;
    }

    /**
     * @param largura the largura to set
     */
    public void setLargura(int largura) {
        this.largura = largura;
    }

    /**
     * @return the altura
     */
    public int getAltura() {
        return altura;
    }

    /**
     * @param altura the altura to set
     */
    public void setAltura(int altura) {
        this.altura = altura;
    }

    /**
     * @return the profundidade
     */
    public int getProfundidade() {
        return profundidade;
    }

    /**
     * @param profundidade the profundidade to set
     */
    public void setProfundidade(int profundidade) {
        this.profundidade = profundidade;
    }

    /**
     * @return the peso
     */
    public float getPeso() {
        return peso;
    }

    /**
     * @param peso the peso to set
     */
    public void setPeso(float peso) {
        this.peso = peso;
    }

    /**
     * @return the valorEntrega
     */
    public float getValorEntrega() {
        return valorEntrega;
    }

    /**
     * @param valorEntrega the valorEntrega to set
     */
    public void setValorEntrega(float valorEntrega) {
        this.valorEntrega = valorEntrega;
    }
}
