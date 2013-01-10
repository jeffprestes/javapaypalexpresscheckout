/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.domain.expresscheckout;

import br.com.paypalbrasil.x.domain.CabecalhoResposta;
import br.com.paypalbrasil.x.domain.Resposta;
import java.util.Objects;

/**
 * Objeto que armazena o retorno de erro do Express Checkout
 *
 * @author jprestes
 */
public class ErroResposta {

    private String version;
    private int codigoErro;
    private String mensagemCurta;
    private String mensagemLonga;
    private String codigoSeveridade;

    public ErroResposta() {
        super();
    }

    public int getCodigoErro() {
        return codigoErro;
    }

    public void setCodigoErro(int codigoErro) {
        this.codigoErro = codigoErro;
    }

    public String getCodigoSeveridade() {
        return codigoSeveridade;
    }

    public void setCodigoSeveridade(String codigoSeveridade) {
        this.codigoSeveridade = codigoSeveridade;
    }

    public String getMensagemCurta() {
        return mensagemCurta;
    }

    public void setMensagemCurta(String mensagemCurta) {
        this.mensagemCurta = mensagemCurta;
    }

    public String getMensagemLonga() {
        return mensagemLonga;
    }

    public void setMensagemLonga(String mensagemLonga) {
        this.mensagemLonga = mensagemLonga;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final ErroResposta other = (ErroResposta) obj;
        if (!Objects.equals(this.version, other.version)) {
            return false;
        }
        if (this.codigoErro != other.codigoErro) {
            return false;
        }
        if (!Objects.equals(this.mensagemCurta, other.mensagemCurta)) {
            return false;
        }
        if (!Objects.equals(this.codigoSeveridade, other.codigoSeveridade)) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 41 * hash + Objects.hashCode(this.version);
        hash = 41 * hash + this.codigoErro;
        hash = 41 * hash + Objects.hashCode(this.mensagemCurta);
        return hash;
    }

    @Override
    public String toString() {
        return "ErroResposta{" + "version=" + version + ", codigoErro=" + codigoErro + ", mensagemCurta=" + mensagemCurta + ", mensagemLonga=" + mensagemLonga + ", codigoSeveridade=" + codigoSeveridade + '}';
    }
}
