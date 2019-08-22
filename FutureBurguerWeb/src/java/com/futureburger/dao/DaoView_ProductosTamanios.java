/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.futureburger.dao;

import com.futureburger.interfaces.View_ProductosTamaniosInterface;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.futureburger.modelo.View_productosTamanios;

/**
 * Clase para la visualizacion del tamaño del producto
 *
 * @author FutureBurguer
 */
public class DaoView_ProductosTamanios implements View_ProductosTamaniosInterface {

    Conexion cone = new Conexion();
    View_productosTamanios productTamanio = new View_productosTamanios();

    PreparedStatement ejecutar;
    ResultSet resultado;

    private String sql = null;

    private ArrayList<View_productosTamanios> listaProducto;

    /**
     *
     * @param productoId dato proporcionado por el usuario
     * @return Objeto de tipo View_productosTamanios
     */
    @Override
    public View_productosTamanios verProductoDetalle(int productoId) {
        cone.abrirConexion();
        sql = "select * from view_productostamanios where producto_id=?";
        try {
            ejecutar = cone.getCon().prepareStatement(sql);
            ejecutar.setInt(1, productoId);
            resultado = ejecutar.executeQuery();
            resultado.next();
            productTamanio.setPtIdView(resultado.getShort("producto_tamanio_id"));
            productTamanio.setProductoIdView(resultado.getInt("producto_id"));
            productTamanio.setProductoView(resultado.getString("producto"));
            productTamanio.setProductoImgView(resultado.getString("imagen"));
            productTamanio.setProductoDescpView(resultado.getString("descripcion"));
            productTamanio.setTamanioView(resultado.getString("tamanio"));
            productTamanio.setPrecioView(resultado.getDouble("precio"));
            resultado.close();
        } catch (SQLException ex) {
            System.out.println("Error en daoVerProductoDetalle " + ex);
        } finally {
            cone.cerrarConexion();
        }
        return productTamanio;
    }

    @Override
    public View_productosTamanios verPorTamanio(int productoId, String tamanio) {
        cone.abrirConexion();
        sql = "select * from view_productostamanios where producto_id=? and tamanio=?";
        try {
            ejecutar = cone.getCon().prepareStatement(sql);
            ejecutar.setInt(1, productoId);
            ejecutar.setString(2, tamanio);
            resultado = ejecutar.executeQuery();
            resultado.next();
            productTamanio.setPtIdView(resultado.getShort("producto_tamanio_id"));
            productTamanio.setProductoIdView(resultado.getInt("producto_id"));
            productTamanio.setProductoView(resultado.getString("producto"));
            productTamanio.setProductoImgView(resultado.getString("imagen"));
            productTamanio.setProductoDescpView(resultado.getString("descripcion"));
            productTamanio.setTamanioView(resultado.getString("tamanio"));
            productTamanio.setPrecioView(resultado.getDouble("precio"));
            resultado.close();
        } catch (SQLException ex) {
            System.out.println("Error en daoVerPorTamanio " + ex);
        } finally {
            cone.cerrarConexion();
        }
        return productTamanio;
    }

    @Override
    public View_productosTamanios verProductoId(String tamanio, String producto) {
        cone.abrirConexion();
        sql = "select * from view_productostamanios where tamanio=? and producto=?";
        try {
            ejecutar = cone.getCon().prepareStatement(sql);
            ejecutar.setString(1, tamanio);
            ejecutar.setString(2, producto);
            resultado = ejecutar.executeQuery();
            resultado.next();
            productTamanio = new View_productosTamanios();
            productTamanio.setPtIdView(resultado.getShort("producto_tamanio_id"));
            productTamanio.setPrecioView(resultado.getDouble("precio"));
        } catch (SQLException ex) {
            System.out.println("Error en daoVerProductoId " + ex);
        } finally{
            cone.cerrarConexion();
        }
        return productTamanio;
    }

}
