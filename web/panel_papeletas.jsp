<%@page import="modelo.Papeleta"%>
<%@page import="java.util.List"%>
<%@page import="controlador.PartidoController"%>
<%
    PartidoController consulta = new PartidoController();
    List<Papeleta> lista_papeletas = consulta.ObtenerTotalCandidatos();
%>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Gestión de Papeletas</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Inicio</a></li>
                        <li class="breadcrumb-item active">Partidos</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <!-- /.col-md-6 -->
                <div class="col">
                    <div class="card card-primary card-outline">
                        <div class="card-header">
                            <h5 class="m-0">Papeletas Activas</h5>
                        </div>
                        <div class="card-body table-responsive">
                            <table id="maintable" class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>Partido</th>
                                        <th>Tipo de candidatura</th>
                                        <th>Total de candidatos</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <% if (lista_papeletas.size() >= 1) {
                                            for (int i = 0; i < lista_papeletas.size(); i++) {
                                    %>

                                    <tr>
                                        <td><strong><a href="home_admin.jsp?panel=descripcion_papeleta&partidoid=<%=lista_papeletas.get(i).getId()%>"><%=lista_papeletas.get(i).getPartido()%></a></strong></td>
                                        <td><%=lista_papeletas.get(i).getTipo_candidatura()%></td>
                                        <td><%=lista_papeletas.get(i).getTotal()%></td>
                                    </tr>
                                    <%  }//cierre del for
                                    } else {%>
                                    <tr><td colspan="4" ><br> No se encontraron Registros, Ingresa uno nuevo  :)</td></tr>
                                            <%}
                                            %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- /.col-md-6 -->
            </div>
            <!-- /.card -->

        </div>
        <!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
