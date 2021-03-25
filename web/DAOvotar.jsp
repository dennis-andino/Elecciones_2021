 
<%@page import="controlador.PapeletaController"%>
<%
    int rol = Integer.parseInt(request.getSession().getAttribute("rol").toString());
    String panel="index.jsp";
    PapeletaController control = new PapeletaController();
    String presidente = request.getParameter("presidente").trim();
    String alcalde = request.getParameter("alcalde").trim();
    String id_votante = request.getSession().getAttribute("id").toString().trim();
    int id_dep = Integer.parseInt(request.getSession().getAttribute("departamento").toString());
    int id_mun = Integer.parseInt(request.getSession().getAttribute("municipio").toString());
    int id_mesa = Integer.parseInt(request.getSession().getAttribute("mesa").toString());
    String[] diputados = request.getParameterValues("diputados");
    String diputado1 = diputados[0].trim();
    String diputado2 = diputados[1].trim();
    String diputado3 = diputados[2].trim();
    String[] candidatos = {presidente, alcalde, diputado1, diputado2, diputado3};
    switch (rol) {
        case 0: //usuario elector
            panel = "home_elector.jsp?panel=panel_confirmacion";
            break;

        case 1: //usuario admin
            panel = "home_admin.jsp?panel=panel_confirmacion";
            break;

        case 2: //usuario miembro mesa
            panel = "home_miembro.jsp?panel=panel_confirmacion";
            break;

        case 3: //usuario magistrado
            panel = "home_magistrado.jsp?panel=panel_confirmacion";
            break;

        default://usuario sin rol
            out.print("<script>alert(\"Expiro su sesion !" + " \");window.location.href='index.jsp';</script>");
            break;
    }

    if (control.votar(candidatos, id_votante, id_dep, id_mun, id_mesa)) {
        request.getSession().setAttribute("voto", 2);
        out.print("<script>alert(\"Votacion Realizada con exito !! " + " \");window.location.href='"+panel+"';</script>");

    } else {
        out.print("<script>alert(\" No pudimos realizar el proceso, intentalo nuevamente." + " \");window.location.href='"+panel+"';</script>");

    }


%>