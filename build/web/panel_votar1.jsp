<%@page import="modelo.Papeleta"%>
<%@page import="java.util.List"%>
<%@page import="controlador.PapeletaController"%>

<%
    int id_mun = Integer.parseInt(request.getSession().getAttribute("municipio").toString());
    PapeletaController consulta = new PapeletaController();
    List<Papeleta> lista_presidentes = consulta.Obtenerpresidentes();
    List<Papeleta> lista_alcaldes = consulta.ObtenerAlcaldesPorMunicipio(id_mun);
%>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark"></h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Voto</a></li>
                        <li class="breadcrumb-item active">papeleta 1</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <form action="home_admin.jsp" method="GET">
                <input type="hidden" name="panel" value="panel_votar2"> 
                <div class="row">
                    <!-- /.col-md-6 -->
                    <div class="col">
                        <div class="card card-primary card-outline">
                            <div class="card-header">
                                <h5 class="m-0">Presidente</h5>
                            </div>
                            <!---inicio-->
                            <div class="card-body table-responsive">
                                <table id="maintable" class="table-hover">
                                    <tbody>
                                        <%
                                            if (lista_presidentes.size() >= 1) {
                                                for (int i = 0; i < lista_presidentes.size(); i++) {%>
                                        <%  if (i == 10) {%>
                                        <tr>
                                                                                                   <%}%>
                                            <td>
                                                <div class="card text-center" style="width: 100px;">
                                                    <img src="<%=lista_presidentes.get(i).getFotografia()%>" class="card-img"> 
                                                    <label><%=lista_presidentes.get(i).getNombre()%><br><%=lista_presidentes.get(i).getCasilla()%></label>
                                                </div>

                                    <center><input type="radio" name="presidente" value="<%=lista_presidentes.get(i).getId_candidato()%>" required></center>
                                    </td>
                                    <%if (i == 10) {%>
                                    </tr>
                                    <%}%>
                                    <%}
                                    } else {%>
                                    <tr><td colspan="4" ><br> No se encontraron Registros, Ingresa uno nuevo  :)</td></tr>
                                            <%}
                                            %>
                                    </tbody>
                                </table>
                            </div>
                            <!--fin-->
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- /.col-md-6 -->
                    <div class="col">
                        <div class="card card-primary card-outline">
                            <div class="card-header">
                                <h5 class="m-0">Alcalde</h5>
                            </div>
                            <!---inicio-->
                            <div class="card-body table-responsive">
                                <table id="maintable" class="table-hover">
                                    <tbody>
                                        <%
                                            if (lista_alcaldes.size() >= 1) {
                                                for (int i = 0; i < lista_alcaldes.size(); i++) {%>
                                        <%if (i == 10) {%>
                                        <tr>
                                            <%}%>
                                            <td>
                                                <div class="card text-center" style="width: 100px;">
                                                    <img src="<%=lista_alcaldes.get(i).getFotografia()%>" class="card-img"> 
                                                    <label><%=lista_alcaldes.get(i).getNombre()%><br><%=lista_alcaldes.get(i).getCasilla()%></label>
                                                </div>
                                    <center><input type="radio" name="alcalde" value="<%=lista_alcaldes.get(i).getId_candidato()%>" required></center>
                                    </td>
                                    <%if (i == 10) {%>
                                    </tr>
                                    <%}%>
                                    <%}
                                    } else {%>
                                    <tr><td colspan="4" ><br> No se encontraron Registros, Ingresa uno nuevo  :)</td></tr>
                                            <%}
                                            %>
                                    </tbody>
                                </table>
                            </div>
                            <!--fin-->
                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary">Guardar y continuar </button>
                            </div>
                            
                        </div>
                    </div>
                    <!-- /.col-md-6 -->
                </div>
                <!-- /.card -->
</form>
        </div>
        <!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
