/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.controller;

import br.com.paypalbrasil.x.domain.adaptive.DetalhesCliente;
import br.com.paypalbrasil.x.domain.adaptive.CodigoMoeda;
import br.com.paypalbrasil.x.domain.adaptive.FormatoDados;
import br.com.paypalbrasil.x.domain.adaptive.Recebedor;
import br.com.paypalbrasil.x.domain.adaptive.TipoAcaoPagamento;
import br.com.paypalbrasil.x.domain.adaptive.ParametroRequisicao;
import br.com.paypalbrasil.x.domain.adaptive.ResponsavelPagamentoTaxa;
import br.com.paypalbrasil.x.domain.Resposta;
import br.com.paypalbrasil.x.facade.adaptive.OperacaoPagar;
import br.com.paypalbrasil.x.domain.Credenciais;
import br.com.paypalbrasil.x.domain.adaptive.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jeffprestes
 */
public class AdaptiveController extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try {

            
            Credenciais credenciais = new Credenciais(  request.getParameter("usuario"), 
                                                        request.getParameter("senha"), 
                                                        request.getParameter("assinatura"), 
                                                        request.getParameter("appid"));
            
            DetalhesCliente dc = new DetalhesCliente(request.getHeader("user-agent"), request.getRemoteAddr());
            
            ParametroRequisicao pra = new ParametroRequisicao(  request.getParameter("servidor"), 
                                                                false, 
                                                                dc, 
                                                                CodigoMoeda.BRL, 
                                                                TipoAcaoPagamento.PAY, 
                                                                request.getParameter("urlRetorno"), 
                                                                request.getParameter("urlCancelamento"), 
                                                                FormatoDados.NV, 
                                                                FormatoDados.NV);
            pra.setMemo(request.getParameter("memo"));
            
            Recebedor rb = new Recebedor(   Double.valueOf(request.getParameter("valorRecebedor1")), 
                                            request.getParameter("emailRecebedor1"), 
                                            Boolean.parseBoolean(request.getParameter("ehPrimario1")));
            
            ArrayList<Recebedor> recebedores = new ArrayList<Recebedor>();
            recebedores.add(rb);
            
            if ("".equals(request.getParameter("emailRecebedor2"))==false && request.getParameter("emailRecebedor2").trim().contains("@"))        {
                rb = new Recebedor(   Double.valueOf(request.getParameter("valorRecebedor2")), 
                                      request.getParameter("emailRecebedor2"), 
                                      Boolean.parseBoolean(request.getParameter("ehPrimario2")));
                recebedores.add(rb);
            }
            
            if ("".equals(request.getParameter("emailRecebedor3"))==false && request.getParameter("emailRecebedor3").trim().contains("@"))        {
                rb = new Recebedor(   Double.valueOf(request.getParameter("valorRecebedor3")), 
                                      request.getParameter("emailRecebedor3"), 
                                      Boolean.parseBoolean(request.getParameter("ehPrimario3")));
                recebedores.add(rb);
            }
            
            OperacaoPagar op = new OperacaoPagar(credenciais, pra, recebedores, ResponsavelPagamentoTaxa.EACHRECEIVER);
            RespostaPagamento rp = op.executar();
           
            RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/adaptive_apos_obter_chave_pagto.jsp");
            request.setAttribute("resposta", rp);
            rd.forward(request, response);
            
            
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
