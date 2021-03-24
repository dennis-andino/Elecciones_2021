package controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Conexion;
import modelo.Municipio;

public class MunicipioController {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public List ObtenerMunicipios() {
        String sql = "select municipios.id,municipios.nombre as municipio,departamentos.nombre as departamento from municipios inner join departamentos"
                + " on municipios.departamento=departamentos.id order by municipio";
        List<Municipio> tabla = new ArrayList<>();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Municipio municipio = new Municipio(rs.getInt(1), rs.getString(2), rs.getString(3));
                tabla.add(municipio);
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

}
