
package datos;

public class producto {
    
    private int idProducto; 
    private int Precio;
    private int Cantidad;

    public producto(int idProducto, int Precio, int Cantidad) {
        this.idProducto = idProducto;
        this.Precio = Precio;
        this.Cantidad = Cantidad;
    }

    public producto() {
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public int getPrecio() {
        return Precio;
    }

    public void setPrecio(int Precio) {
        this.Precio = Precio;
    }

    public int getCantidad() {
        return Cantidad;
    }

    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }
    
    
    
}
