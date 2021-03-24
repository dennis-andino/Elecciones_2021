package modelo;

public class Papeleta {

    int id, total, idpartido, casilla;
    String partido, tipo_candidatura, fotografia, nombre,candidato,id_candidato;
    
    public Papeleta() {
        this.id = 0;
        this.total = 0;
        this.idpartido=0;
        this.casilla=0;
        this.partido = "empty";
        this.tipo_candidatura = "";
        this.fotografia="";
        this.nombre="";
        this.candidato="";
        this.id_candidato="";
    }

    public Papeleta(int id, int total, String partido, String tipo_candidatura) {
        this.id = id;
        this.total = total;
        this.partido = partido;
        this.tipo_candidatura = tipo_candidatura;
    }

    public Papeleta(int id, String partido, String tipo_candidatura, int total) {
        this.id = id;
        this.total = total;
        this.partido = partido;
        this.tipo_candidatura = tipo_candidatura;
    }

    public Papeleta(String fotografia, String nombre, int casilla) {
        this.fotografia = fotografia;
        this.nombre = nombre;
        this.casilla = casilla;
    }

    public String getId_candidato() {
        return id_candidato;
    }

    public void setId_candidato(String id_candidato) {
        this.id_candidato = id_candidato;
    }

   
    
   
    public String getCandidato() {
        return candidato;
    }

    public void setCandidato(String candidato) {
        this.candidato = candidato.trim();
    }
    
    

    public int getIdpartido() {
        return idpartido;
    }

    public void setIdpartido(int idpartido) {
        this.idpartido = idpartido;
    }

    public int getCasilla() {
        return casilla;
    }

    public void setCasilla(int casilla) {
        this.casilla = casilla;
    }

    public String getFotografia() {
        return fotografia;
    }

    public void setFotografia(String fotografia) {
        this.fotografia = fotografia;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public String getPartido() {
        return partido;
    }

    public void setPartido(String partido) {
        this.partido = partido;
    }

    public String getTipo_candidatura() {
        return tipo_candidatura;
    }

    public void setTipo_candidatura(String tipo_candidatura) {
        this.tipo_candidatura = tipo_candidatura.trim();
    }

}
