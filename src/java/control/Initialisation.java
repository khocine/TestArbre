/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;


import Modele.Gestionnaire;

import java.io.IOException;

import java.util.LinkedHashMap;

import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import service.TaxeEtLivraison;



/**
 *
 * @author 1895066
 */
public class Initialisation extends HttpServlet {
private String url;
    private ServletContext sc;
    private RequestDispatcher rd;
    private HttpSession session;
    private final int PPRODUCT_PER_INDEX_PAGE=8;
    private final int PRODUCT_PER_PAGE=12;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       session = request.getSession();

        if (session == null) {
            response.sendRedirect("http://localhost:82/error.html");
        }
        
        Gestionnaire gs = new Gestionnaire();
        
        gs.setDetails("FR");
       session.setAttribute("lastProducts", gs.getProduitsService().getGroupProducts(PPRODUCT_PER_INDEX_PAGE));
       session.setAttribute("productsPerPage", gs.getGroupProductProduts(PRODUCT_PER_PAGE));
       session.setAttribute("count", 0);
       session.setAttribute("gs",gs);
       session.setAttribute("nextDayDelivery", TaxeEtLivraison.nextDayDelivery);
       session.setAttribute("standardDelivery", TaxeEtLivraison.standardDelivery);
       session.setAttribute("connected",false);
       
       Map<String, String> hm = new LinkedHashMap<>();
       hm = gs.getMapProducts();
       session.setAttribute("mapProduit",hm);
//       List listName = gs.getListeNameProduct();
//       session.setAttribute("listName",listName);
       
       
       
       url = "/index.jsp";
            sc = getServletContext();
            rd = sc.getRequestDispatcher(url);
            rd.forward(request, response);
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
