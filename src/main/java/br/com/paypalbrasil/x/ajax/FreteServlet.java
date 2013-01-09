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
                
                if(temp.equalsIgnoreCase("SHIPTOZIP")){
                    String[] pair = valuetemp[0].split("-");
                    valuetemp[0] = pair[0]+""+pair[1];
                    item.setCepDestino(valuetemp[0]);
                    item2.setCepDestino(valuetemp[0]);
                }
                if(temp.equalsIgnoreCase("L_ITEMWEIGHTVALUE0")){
                    item.setPeso(Float.parseFloat(valuetemp[0]));
                }
                if(temp.equalsIgnoreCase("L_ITEMWEIGHTVALUE1")){
                    item2.setPeso(Float.parseFloat(valuetemp[0]));
                }
                
                if(temp.equalsIgnoreCase("L_ITEMHEIGHTVALUE0")){
                    item.setAltura((int)Float.parseFloat(valuetemp[0]));
                }
                if(temp.equalsIgnoreCase("L_ITEMHEIGHTVALUE1")){
                    item2.setAltura((int)Float.parseFloat(valuetemp[0]));
                }
                if(temp.equalsIgnoreCase("L_ITEMWIDTHVALUE0")){
                    item.setLargura((int)Float.parseFloat(valuetemp[0]));
                }
                if(temp.equalsIgnoreCase("L_ITEMWIDTHVALUE1")){
                    item2.setLargura((int)Float.parseFloat(valuetemp[0]));
                }
                if(temp.equalsIgnoreCase("L_ITEMLENGTHVALUE0")){
                    item.setProfundidade((int)Float.parseFloat(valuetemp[0]));
                }
                if(temp.equalsIgnoreCase("L_ITEMLENGTHVALUE1")){
                    item2.setProfundidade((int)Float.parseFloat(valuetemp[0]));
                }
                
            }/**
            logger.info("Chamada Frete Facil");
            logger.info(item.getCepOrigem()+", "+item.getCepDestino()+", "+item.getLargura()+", "+item.getAltura()+", "+item.getProfundidade()+", "+item.getPeso());
            logger.info(item2.getCepOrigem()+", "+item2.getCepDestino()+", "+item2.getLargura()+", "+item2.getAltura()+", "+item2.getProfundidade()+", "+item2.getPeso());
            item.setValorEntrega(frete.getPreco(item.getCepOrigem(),item.getCepDestino(),item.getLargura(), item.getAltura(), item.getProfundidade(), item.getPeso()));
            item2.setValorEntrega(frete.getPreco(item2.getCepOrigem(),item2.getCepDestino(),item2.getLargura(), item2.getAltura(), item2.getProfundidade(), item2.getPeso()));
            valor.setItens(item,item2);
            logger.info("Valor de cada entrega: item 1 ="+item.getValorEntrega()+" Item 2 ="+item2.getValorEntrega());
            valor.setTotal();
            logger.info("TOTAL DA ENTREGA = "+valor.getTotal());**/
            
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
            /**out.print("METHOD=CallbackResponse");
            out.print("&L_SHIPPINGOPTIONNAME0=SedexHoje");
            out.print("&L_SHIPPINGOPTIONAMOUNT0=20.00");
            out.print("&L_SHIPPINGOPTIONISDEFAULT0=false");
            out.print("&L_SHIPPINGOPTIONNAME1=Sedex10");
            out.print("&L_SHIPPINGOPTIONAMOUNT1=15.00");
            out.print("&L_SHIPPINGOPTIONISDEFAULT1=true");
            out.print("&L_SHIPPINGOPTIONNAME2=Sedex");
            out.print("&L_SHIPPINGOPTIONAMOUNT2=9.99");
            out.print("&L_SHIPPINGOPTIONISDEFAULT2=false");**/
            
              out.print("METHOD=CallbackResponse&OFFERINSURANCEOPTION=false&L_SHIPPINGOPTIONLABEL0=SemAgendamento&L_SHIPPINGOPTIONAMOUNT0=25.00&L_TAXAMT0=2.20&L_INSURANCEAMOUNT0=1.51&L_SHIPPINGOPTIONISDEFAULT0=false&L_SHIPPINGOPTIONLABEL1=ComHoraMarcada&L_SHIPPINGOPTIONAMOUNT1=10.00&L_TAXAMT1=2.00&L_INSURANCEAMOUNT1=1.35&L_SHIPPINGOPTIONISDEFAULT1=true");
            //out.print("METHOD=CallbackResponse&L_SHIPPINGOPTIONAMOUNT0=20.79&L_SHIPPINGOPTIONNAME0=UPS+Ground&L_SHIPPINGOPTIONLABEL0=%28No+service+guarantee%29&L_SHIPPINGOPTIONAMOUNT1=28.32&L_SHIPPINGOPTIONNAME1=UPS+3-Day&L_SHIPPINGOPTIONLABEL1=%283+days%29&L_SHIPPINGOPTIONAMOUNT2=37.25&L_SHIPPINGOPTIONNAME2=UPS+2nd+Day+AM&L_SHIPPINGOPTIONLABEL2=%282+days%2F10%3A30+A.M.%29&L_SHIPPINGOPTIONISDEFAULT0=true");
            //out.print("METHOD=CallbackResponse&L_SHIPPINGOPTIONNAME0="+valor.getNomeEntrega()+"&L_SHIPINGPOPTIONLABEL0="+valor.getNomeEntrega()+"-Sedex"+"&L_SHIPPINGOPTIONAMOUNT0="+valor.getTotal()+"&L_SHIPPINGOPTIONISDEFAULT0=true");
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
