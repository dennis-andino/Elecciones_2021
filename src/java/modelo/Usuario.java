package modelo;
public class Usuario {

    private int rol;
    private String clave, nombre, correo, telefono, Fecha_nac, fotografia, id_us;

    public Usuario() {
        clave = "";
        nombre = "";
        correo = "";
        telefono = "";
        Fecha_nac = "";
        fotografia= "";
        id_us = "";
        rol = 0;
    }

    public Usuario(String id_us, int rol, String clave, String nombre, String correo, String telefono, String Fecha_nac,String fotografia) {
        this.id_us = id_us;
        this.rol = rol;
        this.clave = clave;
        this.nombre = nombre;
        this.correo = correo;
        this.telefono = telefono;
        this.Fecha_nac = Fecha_nac;
this.fotografia=fotografia;
    }

    public String getId_us() {
        return id_us;
    }

    public void setId_us(String id_us) {
        this.id_us = id_us;
    }

    public int getRol() {
        return rol;
    }

    public void setRol(int rol) {
        this.rol = rol;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getFecha_nac() {
        return Fecha_nac;
    }

    public void setFecha_nac(String Fecha_nac) {
        this.Fecha_nac = Fecha_nac;
    }

    public String getFotografia() {
        return fotografia;
    }

    public void setFotografia(String fotografia) {
        this.fotografia = fotografia;
    }
    
    

}
