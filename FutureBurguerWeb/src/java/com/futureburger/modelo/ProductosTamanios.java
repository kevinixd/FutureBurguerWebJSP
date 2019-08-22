
package com.futureburger.modelo;
/* 
 * esta clase es un reflejo de la tabla productos tamaños de la base de datos
 * @author futureburguer
 */


public class ProductosTamanios {
    private int producto_tamanios_id;
    private int producto_id;
    private byte tamanio_id;
    private float precio;
    
    
//constructores
    public ProductosTamanios() {
    }

    public ProductosTamanios(int producto_tamanios_id, int producto_id, byte tamanio_id, float precio) {
        this.producto_tamanios_id = producto_tamanios_id;
        this.producto_id = producto_id;
        this.tamanio_id = tamanio_id;
        this.precio = precio;
    }

    //getter y setter
    public int getProducto_tamanios_id() {
        return producto_tamanios_id;
    }

    public void setProducto_tamanios_id(int producto_tamanios_id) {
        this.producto_tamanios_id = producto_tamanios_id;
    }

    public int getProducto_id() {
        return producto_id;
    }

    public void setProducto_id(int producto_id) {
        this.producto_id = producto_id;
    }

    public byte getTamanio_id() {
        return tamanio_id;
    }

    public void setTamanio_id(byte tamanio_id) {
        this.tamanio_id = tamanio_id;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }
    
    
    
}
