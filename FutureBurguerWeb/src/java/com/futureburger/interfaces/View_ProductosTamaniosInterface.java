package com.futureburger.interfaces;
/**
 * esta interfaz va mostrar los productos a detalle.
 * mostrara los productos por tamaño.
 * 
 * @author futureburguer
 * 
 */

import java.util.ArrayList;
import com.futureburger.modelo.View_productosTamanios;

public interface View_ProductosTamaniosInterface {

    public View_productosTamanios verProductoDetalle(int productoId);

    public View_productosTamanios verPorTamanio(int productoId, String tamanio);

    public View_productosTamanios verProductoId(String tamanio, String producto);
}
