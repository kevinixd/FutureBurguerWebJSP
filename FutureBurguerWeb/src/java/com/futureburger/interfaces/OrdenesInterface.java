package com.futureburger.interfaces;
/**
 *esta interfaz va mostrar las ordenes que hay en pantalla.
 * @author futureburguer
 */

import java.util.ArrayList;
import com.futureburger.modelo.View_Ordenes;

public interface OrdenesInterface {
    public ArrayList<View_Ordenes> verOrdenes(byte orden);
}
