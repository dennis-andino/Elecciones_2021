<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="controlador.PartidoController"%>
<%@page import="modelo.Partido"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    String accion = request.getParameter("accion");
    Partido nuevoPartido = new Partido();
    PartidoController control = new PartidoController();
    switch (accion) {
        case "eliminar":
            String id = request.getParameter("idpartido");
            if (control.eliminaPartido(id)) {
                out.print("<script>alert(\"Se elimino Satisfactoriamente ! \");window.location.href='home_admin.jsp?panel=panel_partidos';</script>");
            } else {
                out.print("<script>alert(\"Upps Algo Salio mal ! no se pudo Eliminar :C ! \");window.location.href='home_admin.jsp?panel=panel_partidos';</script>");
            }
            break;

        case "nuevo":
            //clase para subir archivos a disco
            ServletFileUpload fu = new ServletFileUpload(new DiskFileItemFactory()); //apache 7
            List items = fu.parseRequest(new ServletRequestContext(request)); //apache 8.14 en adelante
            // Iteramos por cada elemento del Request
            Iterator i = items.iterator();
            String nombreArchivo = "";
            String ruta = "";
            File fichero = null;
            int contador = 1;
            while (i.hasNext()) {
                FileItem ff = (FileItem) i.next();
                //verificamos si el elemento es un archivo y verificamos si el tamano del archivo es mayor a 0 bites
                if (!ff.isFormField() && ff.getSize() > 0) {
                    nombreArchivo = ff.getName().trim();
                    fichero = new File(nombreArchivo);
                    // escribimos el fichero en la carpeta que corresponde
                    ruta = application.getRealPath("").trim() + "imagenes\\";
                    fichero = new File(ruta, fichero.getName());
                    System.out.println(ruta);
                    ff.write(fichero);
                    ruta = "imagenes/" + fichero.getName();
                    nuevoPartido.setLogo(ruta);
                } else {
                    nombreArchivo = ff.getFieldName();
                    switch (nombreArchivo) {
                        case "nombre": {
                            nuevoPartido.setNombre(ff.getString().trim());
                            break;
                        }
                        case "descripcion": {
                            nuevoPartido.setDescripcion(ff.getString().trim());
                            break;
                        }
                        default:
                            break;

                    }

                }
            }

            if (control.agregarPartido(nuevoPartido)) {
                out.print("<script>alert(\"Partido agregado exitosamente ! \");window.location.href='home_admin.jsp?panel=panel_partidos';</script>");
            } else {
                out.print("<script>alert(\"Upps Algo Salio mal ! no se puedo guardar :C, intentalo nuevamente ! \");window.location.href='home_admin.jsp?panel=panel_partidos';</script>");
            }
            break;
        default:
            out.print("<script>alert(\"Upps Algo Salio mal ! no se puedo completar la accion solicitada ! \");window.location.href='home_admin.jsp?panel=panel_partidos';</script>");
            break;
    }
%>