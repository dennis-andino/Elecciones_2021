package controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Conexion;
import modelo.Papeleta;

public class PapeletaController {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public List Obtenerpresidentes(int partido_id) {
        String sql = "select usuarios.fotografia, usuarios.nombre, papeletas.casilla from papeletas inner join usuarios on papeletas.candidato=usuarios.id where papeletas.tipo_candidatura=1 and papeletas.partido=" + partido_id;
        List<Papeleta> tabla = new ArrayList<>();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Papeleta papeleta = new Papeleta(rs.getString(1), rs.getString(2), rs.getInt(3));
                tabla.add(papeleta);
            }
            rs.close();
            ps.close();
            cn.desconectar();
            return tabla;

        } catch (SQLException e) {
            System.out.println("error:" + e);
            return null;
        }

    }

    public List Obtenerpresidentes() {
        String sql = "select usuarios.id, usuarios.fotografia, usuarios.nombre, papeletas.casilla from papeletas inner join usuarios on papeletas.candidato=usuarios.id where papeletas.tipo_candidatura=1";
        List<Papeleta> tabla = new ArrayList<>();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Papeleta papeleta = new Papeleta();
                papeleta.setId_candidato(rs.getString(1));
                papeleta.setFotografia(rs.getString(2));
                papeleta.setNombre(rs.getString(3));
                papeleta.setCasilla(rs.getInt(4));
                tabla.add(papeleta);
            }
            rs.close();
            ps.close();
            cn.desconectar();
            return tabla;

        } catch (SQLException e) {
            System.out.println("error:" + e);
            return null;
        }

    }

    public List ObtenerAlcaldes(int partido_id) {
        String sql = "select usuarios.fotografia, usuarios.nombre, papeletas.casilla from papeletas inner join usuarios on papeletas.candidato=usuarios.id where papeletas.tipo_candidatura=2 and papeletas.partido=" + partido_id;
        List<Papeleta> tabla = new ArrayList<>();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Papeleta papeleta = new Papeleta(rs.getString(1), rs.getString(2), rs.getInt(3));
                tabla.add(papeleta);
            }
            rs.close();
            ps.close();
            cn.desconectar();
            return tabla;

        } catch (SQLException e) {
            System.out.println("error:" + e);
            return null;
        }

    }

    public List ObtenerAlcaldesPorMunicipio(int municipio) {
        String sql = "select usuarios.id,usuarios.fotografia, usuarios.nombre, papeletas.casilla from papeletas inner join usuarios on papeletas.candidato=usuarios.id where papeletas.tipo_candidatura=2 and papeletas.municipio=" + municipio;
        List<Papeleta> tabla = new ArrayList<>();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Papeleta papeleta = new Papeleta();
                papeleta.setId_candidato(rs.getString(1));
                papeleta.setFotografia(rs.getString(2));
                papeleta.setNombre(rs.getString(3));
                papeleta.setCasilla(rs.getInt(4));
                tabla.add(papeleta);
            }
            rs.close();
            ps.close();
            cn.desconectar();
            return tabla;

        } catch (SQLException e) {
            System.out.println("error:" + e);
            return null;
        }

    }
    

    public List ObtenerDiputados(int partido_id) {
        String sql = "select usuarios.fotografia, usuarios.nombre, papeletas.casilla from papeletas inner join usuarios on papeletas.candidato=usuarios.id where papeletas.tipo_candidatura=3 and papeletas.partido=" + partido_id;
        List<Papeleta> tabla = new ArrayList<>();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Papeleta papeleta = new Papeleta(rs.getString(1), rs.getString(2), rs.getInt(3));
                tabla.add(papeleta);
            }
            rs.close();
            ps.close();
            cn.desconectar();
            return tabla;

        } catch (SQLException e) {
            System.out.println("error:" + e);
            return null;
        }
    }
    
     public List ObtenerDiputadosPorMunicipio(int municipio) {
        String sql = "select usuarios.id,usuarios.fotografia, usuarios.nombre, papeletas.casilla from papeletas inner join usuarios on papeletas.candidato=usuarios.id where papeletas.tipo_candidatura=3 and papeletas.municipio=" + municipio;
        List<Papeleta> tabla = new ArrayList<>();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Papeleta papeleta = new Papeleta();
                papeleta.setId_candidato(rs.getString(1));
                papeleta.setFotografia(rs.getString(2));
                papeleta.setNombre(rs.getString(3));
                papeleta.setCasilla(rs.getInt(4));
                tabla.add(papeleta);
            }
            rs.close();
            ps.close();
            cn.desconectar();
            return tabla;

        } catch (SQLException e) {
            System.out.println("error:" + e);
            return null;
        }

    }

    public boolean agregarCandidato(Papeleta candidato) throws SQLException {
        String sql = "INSERT INTO papeletas(id,candidato,partido,tipo_candidatura,casilla) VALUES(secuencia_papaletas.nextval,?,?,?,?)";
        int contador;
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, candidato.getCandidato());
            ps.setInt(2, candidato.getIdpartido());
            ps.setInt(3, Integer.parseInt(candidato.getTipo_candidatura()));
            ps.setInt(4, candidato.getCasilla());
            contador = ps.executeUpdate();
            if (contador == 1) {
                System.out.println("Se guardo Correctamente");
                ps.close();
                cn.desconectar();
                return true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
            ps.close();
            cn.desconectar();
            return false;
        }
        return false;
    }

    public boolean eliminaCandidato(String idcandidato) throws SQLException {
        String sql;
        sql = "delete from papeletas WHERE candidato=" + idcandidato;
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            ps.close();
            cn.desconectar();

            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        ps.close();
        cn.desconectar();
        return false;
    }

}
