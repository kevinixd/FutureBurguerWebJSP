/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.futureburger.interfaces;

import java.util.ArrayList;
import com.futureburger.modelo.DetallePedido;

/**
 *
 * @author FutureBurguer
 */
public interface DetallePedidoInterface {
    public boolean agregarPedido(ArrayList<DetallePedido> pedido);
}
