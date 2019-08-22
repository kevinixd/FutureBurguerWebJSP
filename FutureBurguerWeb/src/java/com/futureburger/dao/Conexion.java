package com.futureburger.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {
    private Connection con;
    
    private static final String URL="jdbc:mysql://localhost:3306/java19_futureburguer";
    private static final String USER="root";
    private static final String PASSWORD="";

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }
    
    
    public void abrirConexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error en conexion> " + e);
        }
    }
    
    public void cerrarConexion(){
        if (con!=null) {
            try {
                if (con.isClosed()==false) {
                    con.close();
                }
            } catch (Exception e) {
                System.out.println("Error en cerrar Conexion:" + e);
                      
            }
        }
    }
}
