package controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Conexion;
import modelo.Papeleta;
import modelo.Partido;

public class PartidoController {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public List ObtenerPartidos() {
        String sql = "select * from partidos where estado=1";
        List<Partido> tabla = new ArrayList<>();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Partido unVehiculo = new Partido(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
                tabla.add(unVehiculo);
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

    public List ObtenerTotalCandidatos() {
         String sql = "select * from resumenpapeletas";
        List<Papeleta> tabla = new ArrayList<>();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Papeleta papeleta = new Papeleta(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getInt(4));
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

    public boolean agregarPartido(Partido partido) throws SQLException {
        String sql = "INSERT INTO partidos(id,nombre,descripcion,logo) VALUES(secuencia_partidos.nextval,?,?,?)";
        int contador;
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, partido.getNombre());
            ps.setString(2, partido.getDescripcion());
            ps.setString(3, partido.getLogo());
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

    public boolean eliminaPartido(String id_partido) throws SQLException {
        String sql;
        sql = "UPDATE partidos set estado=0 WHERE id=" + id_partido;
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
