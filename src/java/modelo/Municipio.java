package modelo;

public class Municipio {

    int id_municipio, id_departamento;
    String nombre_municipio, nombre_departamento;

    public Municipio(int id_municipio, String nombre_municipio, String nombre_departamento) {
        this.id_municipio = id_municipio;
        this.nombre_municipio = nombre_municipio;
        this.nombre_departamento = nombre_departamento;
    }

    public int getId_municipio() {
        return id_municipio;
    }

    public void setId_municipio(int id_municipio) {
        this.id_municipio = id_municipio;
    }

    public int getId_departamento() {
        return id_departamento;
    }

    public void setId_departamento(int id_departamento) {
        this.id_departamento = id_departamento;
    }

    public String getNombre_municipio() {
        return nombre_municipio;
    }

    public void setNombre_municipio(String nombre_municipio) {
        this.nombre_municipio = nombre_municipio;
    }

    public String getNombre_departamento() {
        return nombre_departamento;
    }

    public void setNombre_departamento(String nombre_departamento) {
        this.nombre_departamento = nombre_departamento;
    }
    
    

}
