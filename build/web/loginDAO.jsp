
<%@page import="controlador.UsuarioController"%>
<%@page import="modelo.Usuario"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.io.UnsupportedEncodingException"%>
<%--@page import="encriptacion.EncriptadorAES"--%>
<%@page import="java.security.InvalidKeyException"%>
<%@page import="java.security.NoSuchAlgorithmException"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="javax.crypto.BadPaddingException"%>
<%@page import="javax.crypto.IllegalBlockSizeException"%>
<%@page import="javax.crypto.NoSuchPaddingException"%>
<%
    String accion = request.getParameter("accion");
    UsuarioController userDAO = new UsuarioController();

    switch (accion) {
        case "Ingresar":
            Usuario user = new Usuario();
            //EncriptadorAES encriptador_ = new EncriptadorAES();
            //final String claveEncriptacion_ = "ceutecProject";
            String claveoriginal_ = request.getParameter("pass").trim();
            //String claveEncriptada_ = encriptador_.encriptar(claveoriginal_, claveEncriptacion_);
            user.setId_us(request.getParameter("username").trim());
            //user.setClave(claveEncriptada_);
            user.setClave(claveoriginal_);
            user = userDAO.validar(user);
            if (user != null) {
 
                request.getSession().setAttribute("id", user.getId_us());
                request.getSession().setAttribute("nombre", user.getNombre());
                request.getSession().setAttribute("fotografia", user.getFotografia());
                request.getSession().setAttribute("rol", user.getRol());
                request.getSession().setAttribute("mesa", user.getMesa());
                request.getSession().setAttribute("voto", user.getVoto());
                request.getSession().setAttribute("departamento", user.getId_departamento());
                request.getSession().setAttribute("municipio", user.getId_municipio());
                request.getSession().setAttribute("estado_mesa", user.getEstadoMesa());
                request.getSession().setAttribute("descripcion_mesa", user.getDescripcionMesa());
              
                int rol = user.getRol();
                switch (rol) {
                    case 0: //usuario elector
                        out.print("<script>alert(\"Bienvenido " + request.getSession().getAttribute("nombre") + " \");window.location.href='home_elector.jsp?panel=panel_elector';</script>");
                        break;

                    case 1: //usuario admin
                        out.print("<script>alert(\"Bienvenido " + request.getSession().getAttribute("nombre") + " \");window.location.href='home_admin.jsp?panel=resultados_resumen';</script>");
                        break;

                    case 2: //usuario miembro mesa
                        out.print("<script>alert(\"Bienvenido " + request.getSession().getAttribute("nombre") + " \");window.location.href='home_miembro.jsp?panel=panel_mesa';</script>");
                        break;

                    case 3: //usuario magistrado
                        out.print("<script>alert(\"Bienvenido " + request.getSession().getAttribute("nombre") + " \");window.location.href='home_magistrado.jsp?panel=resultados_resumen';</script>");
                        break;

                    default://usuario sin rol
                        out.print("<script>alert(\"El usuario" + request.getSession().getAttribute("nombre") + " No tiene un rol definido " + " \");window.location.href='index.jsp';</script>");
                        break;
                }

            } else {
                out.print("<script>alert(\" Upps ! no se encontro usuario , verifique sus datos en intentelo nuevamente. \");window.location.href='index.jsp';</script>");
            }
            break;
        /* case "btnRegistro":
            Usuario Nuevouser = new Usuario();
           // EncriptadorAES encriptador = new EncriptadorAES();
            final String claveEncriptacion = "ceutecProject";
            String claveoriginal = request.getParameter("txtclave");
           // String claveEncriptada = encriptador.encriptar(claveoriginal, claveEncriptacion);
            int rol;
            int tipoMembre = Integer.parseInt(request.getParameter("cblicencia"));
            rol = (tipoMembre == 2) ? 3 : 2;
           // Nuevouser.setClave(claveEncriptada);
            Nuevouser.setNombre(request.getParameter("txtnombre"));
            Nuevouser.setCorreo(request.getParameter("txtmail"));
            Nuevouser.setTelefono(request.getParameter("txtelefono"));
            Nuevouser.setFecha_nac(request.getParameter("fechanac"));
            Nuevouser.setRol(rol);
            try {
                if (userDAO.guardar(Nuevouser, tipoMembre)) {
               //     CeuMail correo = new CeuMail(request.getParameter("txtmail").trim());
                 //   correo.enviarMensaje("registro ceucar.com", "Bienvenido a la gran familia de CEUCAR, comienza a disfrutar los mejores  de millones de opciones. \n Atte. Equipo de ceucar.com");
                    out.print("<script>alert(\" Registrado Satisfactoriamente ! Bienvenido \");window.location.href='index.jsp';</script>");
                } else {
                    out.print("<script>alert(\"Upps Algo Salio mal ! no se puedo guardar :C contactanos a ceucarsupport@ceucar.com ! \");window.location.href='index.jsp';</script>");

                }
            } catch (Exception e) {
                out.print("" + e);
                out.print("<script>alert(\"Upps Algo Salio mal ! no se puedo guardar :C contactanos a ceucarsupport@ceucar.com ! \");window.location.href='index.jsp';</script>");

            }
            break;*/
        default:
            System.out.println("no se encontro la opcion (switch) linea 68 [loginDao]");
            break;
    }


%>