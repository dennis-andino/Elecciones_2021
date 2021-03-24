package modelo;
public class Mesa {
     int id,estado,municipio_id;
    String descripcion, presidente,secretario,vocal,latitud,longitud,departamento ,municipio;    

    public Mesa() {
    }

    
    
    public Mesa(int id,String descripcion,  String departamento, String municipio,String presidente, String secretario, String vocal, int estado,  String latitud, String longitud) {
        this.id = id;
        this.estado = estado;
        this.descripcion = descripcion;
        this.presidente = presidente;
        this.secretario = secretario;
        this.vocal = vocal;
        this.latitud = latitud;
        this.longitud = longitud;
        this.departamento = departamento;
        this.municipio = municipio;
    }

    
        public Mesa( String descripcion, String latitud, String longitud) {
        this.id = 1;
        this.estado = 1;
        this.departamento = "";
        this.municipio = "";
          this.descripcion = descripcion;
        this.presidente = "";
        this.secretario = "";
        this.vocal = "";
         this.latitud = latitud;
        this.longitud = longitud;
    }

    public int getMunicipio_id() {
        return municipio_id;
    }

    public void setMunicipio_id(int municipio_id) {
        this.municipio_id = municipio_id;
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


    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getPresidente() {
        return presidente;
    }

    public void setPresidente(String presidente) {
        this.presidente = presidente;
    }

    public String getSecretario() {
        return secretario;
    }

    public void setSecretario(String secretario) {
        this.secretario = secretario;
    }

    public String getVocal() {
        return vocal;
    }

    public void setVocal(String vocal) {
        this.vocal = vocal;
    }

    public String getLatitud() {
        return latitud;
    }

    public void setLatitud(String latitud) {
        this.latitud = latitud;
    }

    public String getLongitud() {
        return longitud;
    }

    public void setLongitud(String longitud) {
        this.longitud = longitud;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public String getMunicipio() {
        return municipio;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }
    
    
    
    
}





