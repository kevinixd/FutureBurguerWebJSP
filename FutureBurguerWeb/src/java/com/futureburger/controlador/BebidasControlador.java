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
 * @author Admin
 */
public class BebidasControlador extends HttpServlet {

    String bebidasFrias = "pags/bebidas/bebidasFrias/bebidasFrias.jsp";
    String bebidasCalientes = "pags/bebidas/bebidasFrias/bebidasCalientes.jsp";

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
        if (action.equalsIgnoreCase("mostrarBebidasFrias")) {
            acceso = bebidasFrias;
            DaoProductos dao = new DaoProductos();
            ArrayList<Productos> lista = new ArrayList<>();
            lista = dao.verBebidas();
            request.setAttribute("listaBebidasFrias", lista);
        }
        
        if (action.equalsIgnoreCase("mostrarBebidasCalientes")) {
            acceso = bebidasCalientes;
            DaoProductos dao = new DaoProductos();
            ArrayList<Productos> lista = new ArrayList<>();
            lista = dao.verBebidasDesayuno();
            request.setAttribute("listaBebidasCalientes", lista);
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
