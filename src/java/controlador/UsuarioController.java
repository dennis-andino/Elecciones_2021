package controlador;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
        String sql = "SELECT * FROM USUARIOS WHERE id=? AND clave=?";

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
                us.setNombre(rs.getString(3));
                us.setCorreo(rs.getString(4));
                us.setTelefono(rs.getString(6));
                us.setFecha_nac(rs.getString(7));
                us.setRol(rs.getInt(9));
                us.setFotografia(rs.getString(8));         
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
             System.out.println("se disparo el catch:" + resultado);
            return null;
        }

    }

    public boolean guardar(Usuario usuario) {
        String sql = "INSERT INTO USUARIOS(id_us,clave,nombre,apellido,correo,pais,latitud,longitud,telefono,Fecha_nac,rtn)values(secUsu.nextval,?,?,?,?,?,?,?,?,?,?)";
        int contador;
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, usuario.getClave());
            ps.setString(2, usuario.getNombre());
            ps.setString(4, usuario.getCorreo());
            ps.setString(8, usuario.getTelefono());
            ps.setString(9, usuario.getFecha_nac());
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

    public boolean guardar(Usuario usuario, int tipoMembre) throws Exception {
        con = cn.conectar();
        CallableStatement cst = con.prepareCall("{call insertaUsuario(?,?,?,?,?,?,?,?,?,?,?,?)}");
        try {
            cst.setString("cla", usuario.getClave());
            cst.setString("nom", usuario.getNombre());
            cst.setString("ema", usuario.getCorreo());
            cst.setString("tel", usuario.getTelefono());
            cst.setString("fec", usuario.getFecha_nac());
            cst.setInt("rl", usuario.getRol());
            cst.setInt("tip", tipoMembre);
            cst.execute();
            System.out.println("Se guardo Correctamente");
            cst.close();
            con.close();
            return true;
        } catch (SQLException e) {
            System.out.println(e);

        }
        return false;

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
