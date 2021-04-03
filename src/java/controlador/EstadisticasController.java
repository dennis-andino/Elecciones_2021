package controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Conexion;
import modelo.Resultados;

public class EstadisticasController {

    public EstadisticasController() {
    }

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public String[] ResultadosPorPresidente() {
        String query = "SELECT usuarios.nombre,count(votos.candidato) as total FROM votos INNER JOIN usuarios ON votos.candidato= usuarios.id where tipo_candidatura=1 GROUP BY usuarios.nombre";
        String[] resultado = {"", ""};
        try {
            con = cn.conectar();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                resultado[0] += "'" + rs.getString(1) + "'" + ",";
                resultado[1] += rs.getString(2) + ",";
            }
            rs.close();
            ps.close();
            cn.desconectar();
        } catch (SQLException e) {
            resultado = null;
        } finally {
            // System.out.println("ppepepe");
            return resultado;
        }

    }

    public String ResultadosPorPresidentePie() {
        String query = "SELECT usuarios.nombre,count(votos.candidato) as total FROM votos INNER JOIN usuarios ON votos.candidato= usuarios.id where tipo_candidatura=1 GROUP BY usuarios.nombre";
        String resultado = "";
        try {
            con = cn.conectar();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                resultado += "{name:" + "'" + rs.getString(1) + "'" + ",y:" + rs.getString(2) + "},";
            }
            rs.close();
            ps.close();
            cn.desconectar();
        } catch (SQLException e) {
            resultado = null;
        } finally {

            return resultado;
        }

    }
    
    public String ResultadosPorPresidentePieMesa(int mesa) {
        String query = "SELECT usuarios.nombre,count(votos.candidato) as total FROM votos INNER JOIN usuarios ON votos.candidato= usuarios.id where votos.tipo_candidatura=1 AND votos.mesa="+mesa+" GROUP BY usuarios.nombre";
        String resultado = "";
        try {
            con = cn.conectar();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                resultado += "{name:" + "'" + rs.getString(1) + "'" + ",y:" + rs.getString(2) + "},";
            }
            rs.close();
            ps.close();
            cn.desconectar();
        } catch (SQLException e) {
            resultado = null;
        } finally {

            return resultado;
        }

    }
    public String[] ResultadosPresidenteDep() {
        String query = "select * from vista_presidente_dep";
        String[] resultado = {"", ""};
        try {
            con = cn.conectar();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                resultado[0] += "'" + rs.getString(1) + "'" + ",";
                resultado[1] += rs.getString(2) + ",";
            }
            rs.close();
            ps.close();
            cn.desconectar();
        } catch (SQLException e) {
            resultado = null;
        } finally {
            // System.out.println("ppepepe");
            return resultado;
        }

    }

    public String[] ResultadosPorAlcalde() {
        String query = "select concat(concat(nombre,' ['),concat(municipio,' ]'))as candidato,total from vista_resultados_alcaldes order by municipio";
        String[] resultado = {"", ""};
        try {
            con = cn.conectar();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                resultado[0] += "'" + rs.getString(1) + "'" + ",";
                resultado[1] += rs.getString(2) + ",";
            }
            rs.close();
            ps.close();
            cn.desconectar();
        } catch (SQLException e) {
            resultado = null;
        } finally {
            return resultado;
        }

    }

    public List totalResultadosAlcalde() {
        String sql = "select m.nombre as municipio,u.nombre as candidato, count(*) as total from votos v inner join usuarios u on v.candidato=u.id "
                + "inner join municipios m on v.municipio=m.id where tipo_candidatura=2 group by m.nombre,u.nombre order by m.nombre,total desc ";
        List<Resultados> tabla = new ArrayList<>();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Resultados resultado = new Resultados();
                resultado.setMunicipio(rs.getString(1));
                resultado.setCandidato(rs.getString(2));
                resultado.setTotal(rs.getInt(3));
                tabla.add(resultado);
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
    
     public String[] AlcaldesPorMesa(int mesa) {
        String query = "SELECT usuarios.nombre,count(votos.candidato) as total FROM votos INNER JOIN usuarios ON votos.candidato= usuarios.id where votos.tipo_candidatura=2 AND votos.mesa="+mesa+" GROUP BY usuarios.nombre";
        String[] resultado = {"", ""};
        try {
            con = cn.conectar();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                resultado[0] += "'" + rs.getString(1) + "'" + ",";
                resultado[1] += rs.getString(2) + ",";
            }
            rs.close();
            ps.close();
            cn.desconectar();
        } catch (SQLException e) {
            resultado = null;
        } finally {
            // System.out.println("ppepepe");
            return resultado;
        }

    }
    
    public List totalResultadosDiputados() {
        String sql = "select d.nombre as departamento,u.nombre as candidato, count(*) as total from votos v inner join usuarios u on v.candidato=u.id " +
"inner join departamentos d on v.departamento=d.id where tipo_candidatura=3 group by d.nombre,u.nombre";
        List<Resultados> tabla = new ArrayList<>();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Resultados resultado = new Resultados();
                resultado.setDepartamento(rs.getString(1));
                resultado.setCandidato(rs.getString(2));
                resultado.setTotal(rs.getInt(3));
                tabla.add(resultado);
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
    
     public String[] diputados_por_mesa(int mesa) {
        String query = "SELECT usuarios.nombre,count(votos.candidato) as total FROM votos INNER JOIN usuarios ON votos.candidato= usuarios.id where tipo_candidatura=3 and votos.mesa="+ mesa +" GROUP BY usuarios.nombre";
        String[] resultado = {"", ""};
        try {
            con = cn.conectar();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                resultado[0] += "'" + rs.getString(1) + "'" + ",";
                resultado[1] += rs.getString(2) + ",";
            }
            rs.close();
            ps.close();
            cn.desconectar();
        } catch (SQLException e) {
            resultado = null;
        } finally {
            // System.out.println("ppepepe");
            return resultado;
        }

    }

}
