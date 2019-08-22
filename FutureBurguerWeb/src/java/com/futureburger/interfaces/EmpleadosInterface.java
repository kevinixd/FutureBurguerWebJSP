package com.futureburger.interfaces;
/**
 * esta intefaz va confirmar si el usuario que inicio secion es un empleado o no.
 * @author futureburguer
 */

import com.futureburger.modelo.Empleados;

public interface EmpleadosInterface {
   
    public Empleados confirmarUsuario(Empleados empleado);
    
}
