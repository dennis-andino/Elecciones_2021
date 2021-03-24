<%@page import="modelo.Usuario"%>
<%@page import="controlador.UsuarioController"%>

<%
    String accion = request.getParameter("accion");
    Usuario usuario = new Usuario();
    UsuarioController control = new UsuarioController();
    
    switch (accion) {
        case "agregar":
            usuario.setId_us(request.getParameter("id"));
                usuario.setNombre(request.getParameter("nombre"));
                usuario.setFecha_nac(request.getParameter("nacimiento"));
                usuario.setDireccion(request.getParameter("direccion"));
                usuario.setCorreo(request.getParameter("correo"));
                usuario.setTelefono(request.getParameter("telefono"));
                usuario.setFotografia(request.getParameter("fotografia"));
                usuario.setClave(request.getParameter("clave"));
                usuario.setMesa(Integer.parseInt(request.getParameter("mesa")));
                usuario.setRol(Integer.parseInt(request.getParameter("rol")));
                if (control.guardar(usuario)) {
                out.print("<script>alert(\"Usuario agregado Satisfactoriamente ! \");window.location.href='home_admin.jsp?panel=panel_usuarios&rol="+usuario.getRol()+"';</script>");
            } else {
                out.print("<script>alert(\"No se pudo agregar el usuario :C ! \");window.location.href='home_admin.jsp?panel=panel_usuarios&rol="+usuario.getRol()+"';</script>");
            }
            break;

        case "eliminar":
            /*
            String idpartido = request.getParameter("idpartido");
            String idcandidato = request.getParameter("idcandidato");
            if (control.eliminaCandidato(idcandidato)) {
                out.print("<script>alert(\"El usuario se elimino satisfactoriamente ! \");window.location.href='home_admin.jsp?panel=descripcion_papeleta&partidoid=" + papeleta.getIdpartido() + "';</script>");
            } else {
                 out.print("<script>alert(\"No pudimos eliminar el usuario, verifica la informacion proporcionada. ! \");window.location.href='home_admin.jsp?panel=descripcion_papeleta&partidoid=" + papeleta.getIdpartido() + "';</script>");
            }*/
            break;
        default:
            out.print("<script>alert(\"Upps Algo Salio mal ! no se puedo completar la accion solicitada ! \");window.location.href='home_admin.jsp?panel=panel_partidos';</script>");
            break;
    }
%>