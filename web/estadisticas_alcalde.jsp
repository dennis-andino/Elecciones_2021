<%@page import="modelo.Resultados"%>
<%@page import="java.util.List"%>
<%@page import="controlador.EstadisticasController"%>
<%
    EstadisticasController consulta = new EstadisticasController();
    List<Resultados> lista_municipios = consulta.totalResultadosAlcalde();
%>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Resultados para alcaldes</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Resultados</a></li>
                        <li class="breadcrumb-item active">Alcaldes</li>
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
                        <div class="card-body table-responsive">
                            <table id="maintable" class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>Municipio</th>
                                        <th>Candidato</th>
                                        <th>Total</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <% if (lista_municipios.size() >= 1) {
                                            for (int i = 0; i < lista_municipios.size(); i++) {
                                    %>

                                    <tr>
                                        <td><strong><a href=""><%=lista_municipios.get(i).getMunicipio() %></a></strong></td>
                                        <td><%=lista_municipios.get(i).getCandidato()%></td>
                                        <td><%=lista_municipios.get(i).getTotal()%></td>
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
