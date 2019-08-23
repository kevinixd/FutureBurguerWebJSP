/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.futureburger.controlador;

import com.futureburger.dao.DaoProductos;
import com.futureburger.modelo.Productos;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author javam2019
 */
public class HamburguesasControlador extends HttpServlet {

    String hamburguesas = "pags/combos/almuerzos.jsp";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
        //La variable acceso contendra la direccion de lo que se desea mostrar
        String acceso = "";
        //La variable accion depende del href en donde se haga la peiticion
        String action = request.getParameter("accion");
        
        PrintWriter out = response.getWriter();
        out.println(action);
        
        if (action.equalsIgnoreCase("mostrarHamburguesas")) {
            acceso = hamburguesas;
            DaoProductos dao = new DaoProductos();
            ArrayList<Productos> lista = new ArrayList<>();
            lista = dao.verProductos(1001);
            request.setAttribute("listaHamburguesas", lista);
        }
        
        request.getRequestDispatcher(acceso).forward(request, response);
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