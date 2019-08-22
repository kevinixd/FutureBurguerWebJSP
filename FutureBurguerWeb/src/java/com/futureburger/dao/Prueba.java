/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.futureburger.dao;

import com.futureburger.modelo.Productos;
import java.util.ArrayList;

/**
 *
 * @author javam2019
 */
public class Prueba {
    public static void main(String[] args) {
        DaoProductos dao = new DaoProductos();
        ArrayList<Productos> lista = new ArrayList<>();
        lista = dao.verBebidas();
        for (Productos productos : lista) {
            System.out.println(productos.toString());
        }
    }
}
