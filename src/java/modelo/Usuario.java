package modelo;

public class Usuario {

    /* 0-> elector , 1->admin, 2->miembro mesa, 3->magistrado*/
    private int rol, mesa, voto, estado, Id_departamento, id_municipio, estadoMesa;
    private String clave, nombre, correo, telefono, Fecha_nac, fotografia, id_us, direccion, descripcionMesa;

    public Usuario() {
        clave = "";
        nombre = "";
        correo = "";
        telefono = "";
        Fecha_nac = "";
        fotografia = "";
        id_us = "";
        rol = -1;
        voto = 0;
        mesa = 0;
        estado = 0;
        estadoMesa = 0;
        direccion = "";
        descripcionMesa = "";

    }

    public Usuario(String id_us, int rol, String clave, String nombre, String correo, String telefono, String Fecha_nac, String fotografia) {
        this.id_us = id_us;
        this.rol = rol;
        this.clave = clave;
        this.nombre = nombre;
        this.correo = correo;
        this.telefono = telefono;
        this.Fecha_nac = Fecha_nac;
        this.fotografia = fotografia;
    }

    public int getEstadoMesa() {
        return estadoMesa;
    }

    public void setEstadoMesa(int estadoMesa) {
        this.estadoMesa = estadoMesa;
    }

    public String getDescripcionMesa() {
        return descripcionMesa;
    }

    public void setDescripcionMesa(String descripcionMesa) {
        this.descripcionMesa = descripcionMesa;
    }

    public int getId_departamento() {
        return Id_departamento;
    }

    public void setId_departamento(int Id_departamento) {
        this.Id_departamento = Id_departamento;
    }

    public int getId_municipio() {
        return id_municipio;
    }

    public void setId_municipio(int id_municipio) {
        this.id_municipio = id_municipio;
    }

    public int getMesa() {
        return mesa;
    }

    public void setMesa(int mesa) {
        this.mesa = mesa;
    }

    public int getVoto() {
        return voto;
    }

    public void setVoto(int voto) {
        this.voto = voto;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
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
