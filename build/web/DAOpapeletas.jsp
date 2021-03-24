<%@page import="controlador.PapeletaController"%>
<%@page import="modelo.Papeleta"%>
<%
    String accion = request.getParameter("accion");
    Papeleta papeleta = new Papeleta();
    PapeletaController control = new PapeletaController();
    papeleta.setIdpartido(Integer.parseInt(request.getParameter("partidoid")));
    switch (accion) {
        case "agregar":
            papeleta.setCandidato(request.getParameter("candidato"));
            papeleta.setTipo_candidatura(request.getParameter("tipo_candidatura"));
            if (papeleta.getTipo_candidatura().equalsIgnoreCase("1")) {
                papeleta.setCasilla(Integer.parseInt(request.getParameter("casilla_p")));
            } else if (papeleta.getTipo_candidatura().equalsIgnoreCase("2")) {
                papeleta.setCasilla(Integer.parseInt(request.getParameter("casilla_a")));
            } else {
                papeleta.setCasilla(Integer.parseInt(request.getParameter("casilla_d")));
            }
            if (control.agregarCandidato(papeleta)) {
                out.print("<script>alert(\"Se agrego el nuevo candidato Satisfactoriamente ! \");window.location.href='home_admin.jsp?panel=descripcion_papeleta&partidoid=" + papeleta.getIdpartido() + "';</script>");
            } else {
                out.print("<script>alert(\"El usuario no existe en el sistema ! \");window.location.href='home_admin.jsp?panel=descripcion_papeleta&partidoid=" + papeleta.getIdpartido() + "';</script>");
            }
            break;

        case "eliminar":
            //clase para subir archivos a disco
            String idpartido = request.getParameter("idpartido");
            String idcandidato = request.getParameter("idcandidato");
            if (control.eliminaCandidato(idcandidato)) {
                out.print("<script>alert(\"El usuario se elimino satisfactoriamente ! \");window.location.href='home_admin.jsp?panel=descripcion_papeleta&partidoid=" + papeleta.getIdpartido() + "';</script>");
            } else {
                 out.print("<script>alert(\"No pudimos eliminar el usuario, verifica la informacion proporcionada. ! \");window.location.href='home_admin.jsp?panel=descripcion_papeleta&partidoid=" + papeleta.getIdpartido() + "';</script>");
            }
            break;
        default:
            out.print("<script>alert(\"Upps Algo Salio mal ! no se puedo completar la accion solicitada ! \");window.location.href='home_admin.jsp?panel=panel_partidos';</script>");
            break;
    }
%>