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
import br.com.paypalbrasil.x.domain.expresscheckout.ItemVenda;
import br.com.paypalbrasil.x.facade.expresschekout.WSFretesPayPal;

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

        WSFretesPayPal frete = new WSFretesPayPal();
        FreteData item = new FreteData();
        FreteData item2 = new FreteData();
        FreteValor valor = new FreteValor();

        try {
            Enumeration<String> name = request.getParameterNames();
            while (name.hasMoreElements()) {
                String temp = name.nextElement().toString();
                String[] valuetemp = request.getParameterValues(temp);
                logger.info(temp + " = " + valuetemp[0]);

                if (temp.equalsIgnoreCase("SHIPTOZIP")) {
                    String[] pair = valuetemp[0].split("-");
                    valuetemp[0] = pair[0] + "" + pair[1];
                    item.setCepDestino(valuetemp[0]);
                    item2.setCepDestino(valuetemp[0]);
                }
                if (temp.equalsIgnoreCase("L_ITEMWEIGHTVALUE0")) {
                    item.setPeso(Float.parseFloat(valuetemp[0]));
                }
                if (temp.equalsIgnoreCase("L_ITEMWEIGHTVALUE1")) {
                    item2.setPeso(Float.parseFloat(valuetemp[0]));
                }

                if (temp.equalsIgnoreCase("L_ITEMHEIGHTVALUE0")) {
                    item.setAltura((int) Float.parseFloat(valuetemp[0]));
                }
                if (temp.equalsIgnoreCase("L_ITEMHEIGHTVALUE1")) {
                    item2.setAltura((int) Float.parseFloat(valuetemp[0]));
                }
                if (temp.equalsIgnoreCase("L_ITEMWIDTHVALUE0")) {
                    item.setLargura((int) Float.parseFloat(valuetemp[0]));
                }
                if (temp.equalsIgnoreCase("L_ITEMWIDTHVALUE1")) {
                    item2.setLargura((int) Float.parseFloat(valuetemp[0]));
                }
                if (temp.equalsIgnoreCase("L_ITEMLENGTHVALUE0")) {
                    item.setProfundidade((int) Float.parseFloat(valuetemp[0]));
                }
                if (temp.equalsIgnoreCase("L_ITEMLENGTHVALUE1")) {
                    item2.setProfundidade((int) Float.parseFloat(valuetemp[0]));
                }

            }
            logger.info("Chamada Frete Facil");
            logger.info(item.getCepOrigem() + ", " + item.getCepDestino() + ", " + item.getLargura() + ", " + item.getAltura() + ", " + item.getProfundidade() + ", " + item.getPeso());
            logger.info(item2.getCepOrigem() + ", " + item2.getCepDestino() + ", " + item2.getLargura() + ", " + item2.getAltura() + ", " + item2.getProfundidade() + ", " + item2.getPeso());
            item.setValorEntrega(frete.getPreco(item.getCepOrigem(), item.getCepDestino(), item.getLargura(), item.getAltura(), item.getProfundidade(), item.getPeso()));
            item2.setValorEntrega(frete.getPreco(item2.getCepOrigem(), item2.getCepDestino(), item2.getLargura(), item2.getAltura(), item2.getProfundidade(), item2.getPeso()));
            valor.setItens(item, item2);
            logger.info("Valor de cada entrega: item 1 =" + item.getValorEntrega() + " Item 2 =" + item2.getValorEntrega());
            valor.setTotal();
            logger.info("TOTAL DA ENTREGA = " + valor.getTotal());


            out.print("METHOD=CallbackResponse&OFFERINSURANCEOPTION=false&L_SHIPPINGOPTIONLABEL0=" + valor.getNomeEntrega() + "&L_SHIPPINGOPTIONAMOUNT0=" + valor.getTotal() + "&L_TAXAMT0=2.20&L_INSURANCEAMOUNT0=1.51&L_SHIPPINGOPTIONISDEFAULT0=true");

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
