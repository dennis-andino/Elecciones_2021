package modelo;

public class Resultados {

    String municipio;
    String departamento;
    String Candidato;
    int total;

    public Resultados() {
        departamento="";
        municipio = "";
        Candidato = "";
        total = 0;
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

    public String getCandidato() {
        return Candidato;
    }

    public void setCandidato(String Candidato) {
        this.Candidato = Candidato;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

}
