/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.paypalbrasil.x.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;

/**
 *
 * @author aalonso
 */
public class FreteServlet extends HttpServlet {

    private static Logger logger = Logger.getLogger(FreteServlet.class);

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
        try {
            Enumeration<String> name = request.getParameterNames();
            while (name.hasMoreElements()) {
                String temp = name.nextElement().toString();
                String[] valuetemp = request.getParameterValues(temp);
                logger.info(temp + " = " + valuetemp[0]);
            }
            //out.println("<HTML>");
            //out.println("<HEAD><TITLE>Response</TITLE></HEAD>");
            //out.println("<BODY>");
            //out.println("METHOD=CallbackResponse&L_SHIPPINGOPTIONNAME0=UPS Next Day Air&L_SHIPPINGOPTIONAMOUNT0=20.00&L_TAXAMT0=2.20 &L_SHIPPINGOPTIONISDEFAULT0=true");
            /**
             * out.println("METHOD=CallbackResponse" +
             * "&OFFERINSURANCEOPTION=true" + "&L_SHIPPINGOPTIONNAME0=Sedex
             * Hoje" + "&L_SHIPPINGOPTIONAMOUNT0=20.00" + "&L_TAXAMT0=2.20" +
             * "&L_INSURANCEAMOUNT0=1.51" + "&L_SHIPPINGOPTIONISDEFAULT0=false"
             * + "&L_SHIPPINGOPTIONNAME1=Sedex 10" +
             * "&L_SHIPPINGOPTIONAMOUNT1=15.00" + "&L_TAXAMT1=2.00" +
             * "&L_INSURANCEAMOUNT1=1.35" + "&L_SHIPPINGOPTIONISDEFAULT1=true" +
             * "&L_SHIPPINGOPTIONNAME2=Sedex" + "&L_SHIPPINGOPTIONAMOUNT2=9.99"
             * + "&L_TAXAMT2=1.99" + "&L_INSURANCEAMOUNT2=1.28" +
             * "&L_SHIPPINGOPTIONISDEFAULT2=false");
             **/
            //out.print("</BODY></HTML>");
            out.print("<HTML>");
            out.print("<HEAD><TITLE>Response</TITLE></HEAD>");
            out.print("<BODY>");
            out.print("METHOD=CallbackResponse");
            out.print("&L_SHIPPINGOPTIONNAME0=SedexHoje");
            out.print("&L_SHIPPINGOPTIONAMOUNT0=20.00");
            out.print("&L_SHIPPINGOPTIONISDEFAULT0=false");
            out.print("&L_SHIPPINGOPTIONNAME1=Sedex10");
            out.print("&L_SHIPPINGOPTIONAMOUNT1=15.00");
            out.print("&L_SHIPPINGOPTIONISDEFAULT1=true");
            out.print("&L_SHIPPINGOPTIONNAME2=Sedex");
            out.print("&L_SHIPPINGOPTIONAMOUNT2=9.99");
            out.print("&L_SHIPPINGOPTIONISDEFAULT2=false");
            out.print("</BODY></HTML>");
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
        return "Manipula requisicao de preco de frete";
    }// </editor-fold>
}
