/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.futureburger.dao;

import com.futureburger.interfaces.TiposCombosInterface;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.futureburger.modelo.TiposCombos;

/**
 * 
 * @author FutureBurguer
 */
public class DaoTiposCombos implements TiposCombosInterface{
    
    Conexion conexion= new Conexion();
    ResultSet resultado;
    PreparedStatement ejecutar;
    TiposCombos tipos;
    
    private String sql=null;

    
    /**
     * 
     * @return 
     */
    @Override
    public ArrayList<TiposCombos> verTipos() {
        ArrayList<TiposCombos> lista= new ArrayList();
        conexion.abrirConexion();
        sql="select * from tiposcombos where tipo_combo_id<>3";
        try {
            ejecutar=conexion.getCon().prepareStatement(sql);
            resultado=ejecutar.executeQuery();
            while(resultado.next()){
                tipos= new TiposCombos();
                tipos.setTipoComboId(resultado.getByte("tipo_combo_id"));
                tipos.setNombre(resultado.getString("nombre"));
                lista.add(tipos);
            }
        } catch (SQLException ex) {
            System.out.println("Error en daoTiposCombosverTipos " + ex);
        }finally{
            conexion.cerrarConexion();
        }
      return lista;  
    }

}
