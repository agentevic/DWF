/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;

import datos.producto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "Servletagregar", urlPatterns = {"/Servletagregar"})
public class Servletagregar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         HttpSession sesion=request.getSession();
        ArrayList<producto> listadeproductos;
        listadeproductos = (ArrayList<producto>) sesion.getAttribute("listadeproductos");
        RequestDispatcher vista = request.getRequestDispatcher("index.jsp");
        int Nidproducto, Ncantidad,Nprecio;
        Nidproducto = Integer.parseInt(request.getParameter("idproducto"));
        Ncantidad= Integer.parseInt(request.getParameter("Cantidad")); 
        Nprecio= Integer.parseInt(request.getParameter("precio")); 
        producto nproducto = new producto(Nidproducto,Ncantidad,Nprecio);
        
        if (listadeproductos == null) {
            listadeproductos = new ArrayList<producto>();  
        }
        listadeproductos.add(nproducto);
        sesion.setAttribute("listadeproductos", listadeproductos);
        vista.forward(request, response);
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
