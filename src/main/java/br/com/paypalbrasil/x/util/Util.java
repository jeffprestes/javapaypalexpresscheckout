/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.util;

import java.io.IOException;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;

/**
 * Metodos utilitarios 
 * @author jprestes
 */
public class Util {
    
    /**
     * Obtem objeto para conexao HTTPS necessario para executar chamadas aos webservices da PayPal
     * @param spec A URL a ser chamada
     * @return Objeto que permite conexao HTTPS
     * @throws IOException 
     */
    public static final HttpsURLConnection getConexaoHttps(String spec) throws IOException     {
        
        URL url;
        HttpsURLConnection conn;
 
        url = new URL(spec);

        conn = (HttpsURLConnection) url.openConnection();
        conn.setDoOutput(true);
        conn.setRequestMethod("POST");
        conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        conn.setRequestProperty("Content-Language", "pt-BR");

        return conn;
            
    }
}
