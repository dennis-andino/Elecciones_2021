<%@page import="controlador.MesaController"%>
<%@page import="modelo.Mesa"%>
<%
    String accion = request.getParameter("accion");
    Mesa mesa = new Mesa();
    MesaController control = new MesaController();
    
    switch (accion) {
        case "agregar":
            mesa.setDescripcion(request.getParameter("descripcion"));
            mesa.setMunicipio_id(Integer.parseInt(request.getParameter("municipio")));
            mesa.setPresidente(request.getParameter("presidente"));
            mesa.setSecretario(request.getParameter("secretario"));
            mesa.setVocal(request.getParameter("vocal"));
           mesa.setLatitud(request.getParameter("latitud"));
           mesa.setLongitud(request.getParameter("longitud"));
            if (control.agregarMesa(mesa)) {
                out.print("<script>alert(\"Se agrego la mesa Satisfactoriamente ! \");window.location.href='home_admin.jsp?panel=panel_mesas';</script>");
            } else {
                out.print("<script>alert(\"No se pudo agregar la mesa :C ! \");window.location.href='home_admin.jsp?panel=panel_mesas';</script>");
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