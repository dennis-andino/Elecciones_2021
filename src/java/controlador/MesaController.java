package controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Conexion;
import modelo.Mesa;

public class MesaController {
     Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    
    
   public List ObtenerCoordenadas() {
        String sql = "SELECT concat('mesa #',concat(id,concat(' ',descripcion))) as descripcion, latitud, longitud FROM MESAS";
        List<Mesa> tabla = new ArrayList<>();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Mesa mesa = new Mesa(rs.getString(1),rs.getString(2),rs.getString(3));
                tabla.add(mesa);
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
   
     
   public List ObtenerMesas() {
        String sql = "select * from vista_todas_mesas";
        List<Mesa> tabla = new ArrayList<>();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Mesa mesa = new Mesa(rs.getInt(1),rs.getString(2),rs.getString(6),rs.getString(7),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(10),rs.getString(9),rs.getString(8));
                tabla.add(mesa);
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
   
    public boolean agregarMesa(Mesa mesa) throws SQLException {
        String sql = "INSERT INTO MESAS(id,descripcion,departamento,municipio,presidente,secretario,vocal,latitud,longitud) VALUES(secuencia_mesas.nextval,?,(select departamento from municipios where id="+ mesa.getMunicipio_id()+"),?,?,?,?,?,?)";
        int contador;
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, mesa.getDescripcion());
            ps.setInt(2, mesa.getMunicipio_id());
            ps.setString(3, mesa.getPresidente());
            ps.setString(4, mesa.getSecretario());
            ps.setString(5, mesa.getVocal());
            ps.setString(6, mesa.getLatitud());
            ps.setString(7, mesa.getLongitud());
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
    
    public boolean cambiarEstado(int id_mesa,int estado) throws SQLException {
        String sql = "update mesas set estado=? where id=?";
        int contador;
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.setInt(1, estado);
            ps.setInt(2, id_mesa);
            contador = ps.executeUpdate();
            if (contador == 1) {
                System.out.println("Se cambio estado exitosamente");
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
    
    
    
    
}
