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
public class DesayunosControlador extends HttpServlet {

    //Estas variables contienen la direccion de los formularios a llamar en el metodo doGet
    String desayunos = "pags/combos/desayunos.jsp";
    
    String combo1 = "pags/combos/combosdesayuno/combos/combo1.html";
    String combo2 = "pags/combos/combosdesayuno/combos/combo2.html";
    String combo3 = "pags/combos/combosdesayuno/combos/combo3.html";
    String combo4 = "pags/combos/combosdesayuno/combos/combo4.html";
    
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
        
        String acceso = "";
        
        String action = request.getParameter("accion");
        
        if (action.equalsIgnoreCase("mostrarDesayunos")) {
            acceso = desayunos;
            DaoProductos dao = new DaoProductos();
            ArrayList<Productos> lista = new ArrayList<>();
            lista = dao.verProductos(1006);
            request.setAttribute("listaDesayunos", lista);
        }
        
        if (action.equalsIgnoreCase("mostrarCombo1")) {
            acceso = combo1;
        }
        if (action.equalsIgnoreCase("mostrarCombo2")) {
            acceso = combo2;
        }
        if (action.equalsIgnoreCase("mostrarCombo3")) {
            acceso = combo3;
        }
        if (action.equalsIgnoreCase("mostrarCombo4")) {
            acceso = combo4;
        }
        
        request.getRequestDispatcher(acceso).forward(request, response);
    }


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
