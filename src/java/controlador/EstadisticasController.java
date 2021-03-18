package controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.Conexion;

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

}
