/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.controller;

import br.com.paypalbrasil.x.domain.CodigoACK;
import br.com.paypalbrasil.x.domain.Credenciais;
import br.com.paypalbrasil.x.domain.expresscheckout.CreateRecurringPaymentsProfileResposta;
import br.com.paypalbrasil.x.domain.expresscheckout.GetExpressCheckoutDetailsResposta;
import br.com.paypalbrasil.x.domain.expresscheckout.SetExpressCheckoutResposta;
import br.com.paypalbrasil.x.domain.expresscheckout.DoExpressCheckoutPaymentResposta;
import br.com.paypalbrasil.x.facade.expresschekout.PagamentoSimples;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;

/**
 * Classe controla o fluxo do Express Checkout.
 *
 * @author jprestes
 */
public class ExpressCheckoutController extends HttpServlet {

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
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Logger logger = Logger.getLogger(this.getClass());

        try {

            //ACAO PARA SetExpressCheckout
            if (request.getParameter("METHOD") != null && !"".equals(request.getParameter("METHOD"))) {

                if ("SETEXPRESSCHECKOUT".equalsIgnoreCase(request.getParameter("METHOD"))) {

                    Credenciais cr = new Credenciais(request.getParameter("USER"), request.getParameter("PWD"), request.getParameter("SIGNATURE"));

                    PagamentoSimples ps = new PagamentoSimples(cr);
                    SetExpressCheckoutResposta resp = ps.setExpressCheckout(request.getParameterMap());

                    if (resp.getCabecalho().getAck() == CodigoACK.Success) {
                        if (resp.getToken() != null) {
                            StringBuilder url = new StringBuilder();
                            if (request.getParameter("NAOENVIAR_ENDPOINT").contains("sandbox")) {
                                url.append("https://www.sandbox.paypal.com");
                            } else {
                                url.append("https://www.paypal.com");
                            }

                            url.append("/br/cgi-bin/webscr?cmd=");
                            url.append(request.getParameter("NAOENVIAR_TIPOCHECKOUT"));
                            /*
                             if (request.getParameter("NAOENVIAR_TIPOCHECKOUT").contains("_express-checkout"))  {
                             url.append("_expresscheckout");
                             }   else if (request.getParameter("NAOENVIAR_TIPOCHECKOUT").contains("_mobile-express-checkout"))  {
                             url.append("_mobile-express-checkout");
                             }
                             */

                            if (request.getParameter("NAOENVIAR_TIPOFLUXO").contains("commit")) {
                                url.append("&useraction=commit");
                            }

                            url.append("&token=");
                            url.append(resp.getToken());


                            //Armazena o token na Sessao
                            HttpSession sessao = request.getSession();
                            sessao.setAttribute("token", resp.getToken());

                            if (request.getParameter("NAOENVIAR_OPCREDIRECT").equals("0")) {
                                logger.info("- Redirecionando o usuario para: " + url.toString());
                                response.sendRedirect(url.toString());
                            } else {
                                request.setAttribute("resposta", resp);
                                request.setAttribute("url", url.toString());
                                if(request.getRequestURI().equals("expcheckout_recorrente.jsp")){
                                
                                RequestDispatcher rd = request.getRequestDispatcher("expcheckout_recorrente_retorno.jsp");
                                rd.forward(request, response);
                                    
                                }else{
                                RequestDispatcher rd = request.getRequestDispatcher("expcheckout_retorno_setEC.jsp");
                                rd.forward(request, response);
                                }
                            }

                        }

                    } else if (resp.getCabecalho().getAck() == CodigoACK.Failure) {
                        request.setAttribute("resposta", resp);
                        RequestDispatcher rd = request.getRequestDispatcher("/expcheckout_erro_chamada.jsp");
                        rd.forward(request, response);
                    }
                }

                if ("GetExpressCheckoutDetails".equalsIgnoreCase(request.getParameter("METHOD"))) {

                    PagamentoSimples ps = new PagamentoSimples();
                    GetExpressCheckoutDetailsResposta resp = ps.getExpressCheckoutDetails(request.getParameterMap());

                    request.setAttribute("resposta", resp);
                    RequestDispatcher rd;
                    if("recorrente".equalsIgnoreCase(request.getParameter("SOURCE"))){
                    rd = request.getRequestDispatcher("/expcheckout_recorrente_getdetails_resposta.jsp");
                    }else{
                    rd = request.getRequestDispatcher("/expcheckout_getexpcheckoutdetails_resposta.jsp");
                    }
                    logger.info("TOKEN=" + resp.getToken());
                    logger.info("INVNUM=" + resp.getNroPedido());
                    logger.info("VERSION=" + resp.getVersao());
                    rd.forward(request, response);
                }

                //DoExpressCheckoutPayment
                if ("DOEXPRESSCHECKOUTPAYMENT".equalsIgnoreCase(request.getParameter("METHOD"))) {

                    Credenciais cr = new Credenciais(request.getParameter("USER"), request.getParameter("PWD"), request.getParameter("SIGNATURE"));

                    PagamentoSimples ps = new PagamentoSimples(cr);
                    DoExpressCheckoutPaymentResposta resp = ps.doExpressCheckoutPayment(request.getParameterMap());

                    if (resp.getCabecalho().getAck() == CodigoACK.Success) {
                        if (resp.getToken() != null) {
                            StringBuilder url = new StringBuilder();
                            if (request.getParameter("NAOENVIAR_ENDPOINT").contains("sandbox")) {
                                url.append("https://www.sandbox.paypal.com");
                            } else {
                                url.append("https://www.paypal.com");
                            }

                            url.append("/br/cgi-bin/webscr?cmd=");
                            url.append(request.getParameter("NAOENVIAR_TIPOCHECKOUT"));
                            /*
                             if (request.getParameter("NAOENVIAR_TIPOCHECKOUT").contains("_express-checkout"))  {
                             url.append("_expresscheckout");
                             }   else if (request.getParameter("NAOENVIAR_TIPOCHECKOUT").contains("_mobile-express-checkout"))  {
                             url.append("_mobile-express-checkout");
                             }
                             */

                            //if (request.getParameter("NAOENVIAR_TIPOFLUXO").contains("commit"))  {
                            // url.append("&useraction=commit");
                            //}   

                            url.append("&token=");
                            url.append(resp.getToken());

                            //Armazena o token na Sessao
                            HttpSession sessao = request.getSession();
                            sessao.setAttribute("token", resp.getToken());

                            if (resp.getCabecalho().getAck() == CodigoACK.Success) {
                                request.setAttribute("resposta", resp);
                                request.setAttribute("url", url.toString());
                                RequestDispatcher rd = request.getRequestDispatcher("expcheckout_retorno_doEC.jsp");
                                rd.forward(request, response);
                            }

                        }

                    } else if (resp.getCabecalho().getAck() == CodigoACK.Failure) {
                        request.setAttribute("resposta", resp);
                        RequestDispatcher rd = request.getRequestDispatcher("/expcheckout_erro_chamada.jsp");
                        rd.forward(request, response);
                    }
                }
                
                
                //CreatePaymentProfile
                if ("CreateRecurringPaymentsProfile".equalsIgnoreCase(request.getParameter("METHOD"))) {

                    Credenciais cr = new Credenciais(request.getParameter("USER"), request.getParameter("PWD"), request.getParameter("SIGNATURE"));

                    PagamentoSimples ps = new PagamentoSimples(cr);
                    CreateRecurringPaymentsProfileResposta resp = ps.createRecurringPaymentsProfile(request.getParameterMap());

                    if (resp.getCabecalho().getAck() == CodigoACK.Success) {
                        if (ps != null) {
                            StringBuilder url = new StringBuilder();
                            if (request.getParameter("NAOENVIAR_ENDPOINT").contains("sandbox")) {
                                url.append("https://www.sandbox.paypal.com");
                            } else {
                                url.append("https://www.paypal.com");
                            }

                            url.append("/br/cgi-bin/webscr?cmd=");
                            url.append(request.getParameter("NAOENVIAR_TIPOCHECKOUT"));
                            /*
                             if (request.getParameter("NAOENVIAR_TIPOCHECKOUT").contains("_express-checkout"))  {
                             url.append("_expresscheckout");
                             }   else if (request.getParameter("NAOENVIAR_TIPOCHECKOUT").contains("_mobile-express-checkout"))  {
                             url.append("_mobile-express-checkout");
                             }
                             */

                            //if (request.getParameter("NAOENVIAR_TIPOFLUXO").contains("commit"))  {
                            // url.append("&useraction=commit");
                            //}   

                            //Armazena o token na Sessao
                            HttpSession sessao = request.getSession();

                            if (resp.getCabecalho().getAck() == CodigoACK.Success) {
                                request.setAttribute("resposta", resp);
                                request.setAttribute("url", url.toString());
                                RequestDispatcher rd = request.getRequestDispatcher("expcheckout_recorrente_createprofile_retorno.jsp");
                                rd.forward(request, response);
                            }

                        }

                    } else if (resp.getCabecalho().getAck() == CodigoACK.Failure) {
                        request.setAttribute("resposta", resp);
                        RequestDispatcher rd = request.getRequestDispatcher("/expcheckout_erro_chamada.jsp");
                        rd.forward(request, response);
                    }
                }
            }

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
