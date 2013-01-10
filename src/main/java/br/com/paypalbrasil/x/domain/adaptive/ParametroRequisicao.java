/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain.adaptive;

/**
 * Classe (POJO) que representa parametros genericos da transação. Pode ser
 * utilizada em diversas transações payment.
 *
 * @author jeffprestes
 */
public class ParametroRequisicao {

    private String servidor;
    private boolean servidorProducao;
    private DetalhesCliente detalheCliente;
    private CodigoMoeda codigoMoeda;
    private TipoAcaoPagamento tipoAcaoPagamento;
    private String memo;
    private String linguaMensagemErro = "en_US";
    private String urlRetorno;
    private String urlCancelamento;
    private FormatoDados formatoDadosRequisicao;
    private FormatoDados formatoDadosResposta;
    private String codigoLocalizacao;

    public ParametroRequisicao() {
    }

    /**
     * Construtor com as informações necessárias para processamento de um
     * adaptive payment
     *
     * @param servidor
     * @param servidorProducao
     * @param detalheCliente
     * @param codigoMoeda
     * @param tipoAcaoPagamento
     * @param urlRetorno
     * @param urlCancelamento
     * @param formatoDadosRequisicao
     * @param formatoDadosResposta
     */
    public ParametroRequisicao(String servidor, boolean servidorProducao, DetalhesCliente detalheCliente, CodigoMoeda codigoMoeda, TipoAcaoPagamento tipoAcaoPagamento, String urlRetorno, String urlCancelamento, FormatoDados formatoDadosRequisicao, FormatoDados formatoDadosResposta) {
        this.setServidor(servidor);
        this.setServidorProducao(servidorProducao);
        this.setDetalheCliente(detalheCliente);
        this.setCodigoMoeda(codigoMoeda);
        this.setTipoAcaoPagamento(tipoAcaoPagamento);
        this.setUrlCancelamento(urlCancelamento);
        this.setUrlRetorno(urlRetorno);
        this.setFormatoDadosRequisicao(formatoDadosRequisicao);
        this.setFormatoDadosResposta(formatoDadosResposta);

    }

    public String getCodigoLocalizacao() {
        return codigoLocalizacao;
    }

    public void setCodigoLocalizacao(String codigoLocalizacao) {
        this.codigoLocalizacao = codigoLocalizacao;
    }

    public String getCodigoMoeda() {
        return codigoMoeda.name();
    }

    public void setCodigoMoeda(CodigoMoeda codigoMoeda) {
        this.codigoMoeda = codigoMoeda;
    }

    public DetalhesCliente getDetalheCliente() {
        return detalheCliente;
    }

    public void setDetalheCliente(DetalhesCliente detalheCliente) {
        this.detalheCliente = detalheCliente;
    }

    public FormatoDados getFormatoDadosRequisicao() {
        return formatoDadosRequisicao;
    }

    public void setFormatoDadosRequisicao(FormatoDados formatoDadosRequisicao) {
        this.formatoDadosRequisicao = formatoDadosRequisicao;
    }

    public FormatoDados getFormatoDadosResposta() {
        return formatoDadosResposta;
    }

    public void setFormatoDadosResposta(FormatoDados formatoDadosResposta) {
        this.formatoDadosResposta = formatoDadosResposta;
    }

    public String getLinguaMensagemErro() {
        return linguaMensagemErro;
    }

    public void setLinguaMensagemErro(String linguaMensagemErro) {
        this.linguaMensagemErro = linguaMensagemErro;
    }

    public String getMemo() {
        if (memo == null) {
            return "";
        } else {
            return memo;
        }
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public String getServidor() {
        return servidor;
    }

    public void setServidor(String servidor) {
        this.servidor = servidor;
    }

    public boolean isServidorProducao() {
        return servidorProducao;
    }

    public void setServidorProducao(boolean servidorProducao) {
        this.servidorProducao = servidorProducao;
    }

    public TipoAcaoPagamento getTipoAcaoPagamento() {
        return tipoAcaoPagamento;
    }

    public void setTipoAcaoPagamento(TipoAcaoPagamento tipoAcaoPagamento) {
        this.tipoAcaoPagamento = tipoAcaoPagamento;
    }

    public String getUrlCancelamento() {
        return urlCancelamento;
    }

    public void setUrlCancelamento(String urlCancelamento) {
        this.urlCancelamento = urlCancelamento;
    }

    public String getUrlRetorno() {
        return urlRetorno;
    }

    public void setUrlRetorno(String urlRetorno) {
        this.urlRetorno = urlRetorno;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final ParametroRequisicao other = (ParametroRequisicao) obj;
        if ((this.servidor == null) ? (other.servidor != null) : !this.servidor.equals(other.servidor)) {
            return false;
        }
        if (this.detalheCliente != other.detalheCliente && (this.detalheCliente == null || !this.detalheCliente.equals(other.detalheCliente))) {
            return false;
        }
        if (this.tipoAcaoPagamento != other.tipoAcaoPagamento) {
            return false;
        }
        if ((this.urlRetorno == null) ? (other.urlRetorno != null) : !this.urlRetorno.equals(other.urlRetorno)) {
            return false;
        }
        if ((this.urlCancelamento == null) ? (other.urlCancelamento != null) : !this.urlCancelamento.equals(other.urlCancelamento)) {
            return false;
        }
        if (this.formatoDadosRequisicao != other.formatoDadosRequisicao) {
            return false;
        }
        if (this.formatoDadosResposta != other.formatoDadosResposta) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 19 * hash + (this.servidor != null ? this.servidor.hashCode() : 0);
        hash = 19 * hash + (this.servidorProducao ? 1 : 0);
        hash = 19 * hash + (this.detalheCliente != null ? this.detalheCliente.hashCode() : 0);
        hash = 19 * hash + (this.codigoMoeda != null ? this.codigoMoeda.hashCode() : 0);
        hash = 19 * hash + (this.tipoAcaoPagamento != null ? this.tipoAcaoPagamento.hashCode() : 0);
        hash = 19 * hash + (this.urlRetorno != null ? this.urlRetorno.hashCode() : 0);
        hash = 19 * hash + (this.urlCancelamento != null ? this.urlCancelamento.hashCode() : 0);
        hash = 19 * hash + (this.formatoDadosRequisicao != null ? this.formatoDadosRequisicao.hashCode() : 0);
        hash = 19 * hash + (this.formatoDadosResposta != null ? this.formatoDadosResposta.hashCode() : 0);
        hash = 19 * hash + (this.codigoLocalizacao != null ? this.codigoLocalizacao.hashCode() : 0);
        return hash;
    }

    @Override
    public String toString() {
        return "ParametroRequisicaoAdaptive{" + "servidor=" + servidor + ", servidorProducao=" + servidorProducao + ", detalheCliente=" + detalheCliente + ", codigoMoeda=" + codigoMoeda + ", tipoAcaoPagamento=" + tipoAcaoPagamento + ", memo=" + memo + ", linguagemMensagemErro=" + linguaMensagemErro + ", urlRetorno=" + urlRetorno + ", urlCancelamento=" + urlCancelamento + ", formatoDadosRequisicao=" + formatoDadosRequisicao + ", formatoDadosResposta=" + formatoDadosResposta + ", codigoLocalizacao=" + codigoLocalizacao + '}';
    }
}
