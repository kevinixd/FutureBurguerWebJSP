package com.futureburger.modelo;
/**
 * esta clase es un reflejo de la tabla clientes de la base de datos
 * @author futureburguer
 */
public class Cliente {

    private int clienteid;
    private String clientenit;
    private String clientenombre;
    private String clienteapellido;
    private int clientetelefono;
    private String clientedireccion;
    
    
    
    //constructores

    public Cliente() {
    }

    public Cliente(int clienteid, String clientenit, String clientenombre, String clienteapellido, int clientetelefono, String clientedireccion) {
        this.clienteid = clienteid;
        this.clientenit = clientenit;
        this.clientenombre = clientenombre;
        this.clienteapellido = clienteapellido;
        this.clientetelefono = clientetelefono;
        this.clientedireccion = clientedireccion;
    }
    
    //getter y setter

    public int getClienteid() {
        return clienteid;
    }

    public void setClienteid(int clienteid) {
        this.clienteid = clienteid;
    }

    public String getClientenit() {
        return clientenit;
    }

    public void setClientenit(String clientenit) {
        this.clientenit = clientenit;
    }

    public String getClientenombre() {
        return clientenombre;
    }

    public void setClientenombre(String clientenombre) {
        this.clientenombre = clientenombre;
    }

    public String getClienteapellido() {
        return clienteapellido;
    }

    public void setClienteapellido(String clienteapellido) {
        this.clienteapellido = clienteapellido;
    }

    public int getClientetelefono() {
        return clientetelefono;
    }

    public void setClientetelefono(int clientetelefono) {
        this.clientetelefono = clientetelefono;
    }

    public String getClientedireccion() {
        return clientedireccion;
    }

    public void setClientedireccion(String clientedireccion) {
        this.clientedireccion = clientedireccion;
    }

}
