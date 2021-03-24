
package modelo;
public class Partido {
     private int id,estado;
    private String nombre, descripcion,logo;

    public Partido(int id,String nombre,String descripcion, String logo, int estado) {
        this.id = id;
        this.estado = estado;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.logo = logo;
    }

    
    public Partido(String nombre, String descripcion, String logo) {
        this.id = 1;
        this.estado = 1;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.logo = logo;
    }

    public Partido() {
         this.id = 1;
        this.estado = 1;
        this.nombre = "";
        this.descripcion = "";
        this.logo = "";
    }
    
    

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
   
}
