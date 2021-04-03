package controlador;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Conexion;
import modelo.Usuario;

/**
 * @author Dennis_Andino
 */
public class UsuarioController {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public Usuario validar(Usuario us) {
        String sql = "select * from vista_login WHERE id=? AND clave=?";
        int resultado = 0;
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, us.getId_us());
            ps.setString(2, us.getClave());
            rs = ps.executeQuery();

            while (rs.next()) {
                resultado++;
                us.setId_us(rs.getString(1));
                us.setNombre(rs.getString(2));
                us.setFotografia(rs.getString(3));
                us.setRol(rs.getInt(4));
                us.setMesa(rs.getInt(5));
                us.setVoto(rs.getInt(6));
                us.setId_departamento(rs.getInt(7));
                us.setId_municipio(rs.getInt(8));
                us.setEstadoMesa(rs.getInt(10));
                us.setDescripcionMesa(rs.getString(11));

            }
            rs.close();
            ps.close();
            cn.desconectar();
            if (resultado >= 1) {
                System.out.println("resultado :" + resultado);
                return us;
            } else {
                System.out.println("resultado :" + resultado);
                return null;
            }

        } catch (SQLException e) {
            System.out.println("se disparo el catch: \n" + e.getMessage());
            return null;
        }

    }

    public List ObtenerUsuarios(int rol) {
        String sql = "select id,nombre,direccion,correo,mesa,voto from usuarios where rol=" + rol;
        List<Usuario> tabla = new ArrayList<>();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setId_us(rs.getString(1));
                usuario.setNombre(rs.getString(2));
                usuario.setDireccion(rs.getString(3));
                usuario.setCorreo(rs.getString(4));
                usuario.setMesa(rs.getInt(5));
                usuario.setVoto(rs.getInt(6));
                tabla.add(usuario);
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

    public List ObtenerUsuariosPorMesa(int mesa) {
        String sql = "select id,nombre,voto from vista_login where mesa=" + mesa;
        List<Usuario> tabla = new ArrayList<>();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setId_us(rs.getString(1));
                usuario.setNombre(rs.getString(2));
                usuario.setVoto(rs.getInt(3));
                tabla.add(usuario);
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

    public boolean guardar(Usuario usuario) {
        String sql = "INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa) VALUES(?,?,?,?,?,?,?,?,?,?)";
        int contador;
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, usuario.getId_us());
            ps.setString(2, usuario.getClave());
            ps.setString(3, usuario.getNombre());
            ps.setString(4, usuario.getCorreo());
            ps.setString(5, usuario.getDireccion());
            ps.setString(6, usuario.getTelefono());
            ps.setString(7, usuario.getFecha_nac());
            ps.setString(8, usuario.getFotografia());
            ps.setInt(9, usuario.getRol());
            ps.setInt(10, usuario.getMesa());

            contador = ps.executeUpdate();
            cn.desconectar();
            if (contador == 1) {
                System.out.println("Se guardo Correctamente");
                return true;
            }
            cn.desconectar();
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
        return false;

    }

    public boolean cambiarEstadoVoto(int estado, String id_user) throws SQLException {
        int contador = 0;
        Boolean respuesta = false;
        String sql = "UPDATE usuarios SET voto=? WHERE id=?";
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.setInt(1, estado);
            ps.setString(2, id_user);
            contador = ps.executeUpdate();

        } catch (Exception e) {
            System.out.println(e.getCause());
        }
        ps.close();
        cn.desconectar();
        if (contador >= 1) {
            respuesta = true;
        }
        return respuesta;

    }

    public String GenerarClave() {
        int n = 99999;
        String clave;
        int numero = (int) (Math.random() * n) + 1;
        clave = "CEU" + numero;
        System.out.println("Clave generada" + clave);
        return clave;
    }

}
