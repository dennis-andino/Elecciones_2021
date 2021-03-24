<%@page import="modelo.Mesa"%>
<%@page import="java.util.List"%>
<%@page import="controlador.MesaController"%>
<%   
    MesaController consulta = new MesaController();
    List<Mesa> lista_mesas = consulta.ObtenerMesas();
%>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                  <!-- <h1 class="m-0 text-dark"></h1>-->
                   <a href="home_admin.jsp?panel=panel_nueva_mesa" class="btn btn-info btn-sm"><i class="fas fa-plus-square"></i></a>
                   <a href="home_admin.jsp?panel=MapsMesas" class="btn btn-danger btn-sm"><i class="fas fa-map-marked-alt"></i></a>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Inicio</a></li>
                        <li class="breadcrumb-item active">Mesas</li>
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
                            <h5 class="m-0"><label>Gestión de Mesas Electorales</label></h5>
                        </div>
                        <div class="card-body table-responsive">
                            <table id="maintable" class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Descripcion</th>
                                        <th>Presidente</th>
                                        <th>Secretario</th>
                                        <th>Vocal</th>
                                        <th>Departamento</th>
                                        <th>Municipio</th>
                                        <th>Estado</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% if (lista_mesas.size() >= 1) {
                                            for (int i = 0; i < lista_mesas.size(); i++) {
                                    %>
                                    <tr>
                                        <td><strong><%=lista_mesas.get(i).getId()%></strong></td>
                                        <td><%=lista_mesas.get(i).getDescripcion()%></td>
                                        <td><%=lista_mesas.get(i).getPresidente()%></td>
                                        <td><%=lista_mesas.get(i).getSecretario()%></td>
                                        <td><%=lista_mesas.get(i).getVocal()%></td>
                                        <td><%=lista_mesas.get(i).getDepartamento()%></td>
                                        <td><%=lista_mesas.get(i).getMunicipio()%></td>
                                        <td><a href="home_admin.jsp?panel=panel_editar_mesa">

                                                <% if (lista_mesas.get(i).getEstado() == 0) {%>
                                                <i class="fas fa-lock"></i>
                                                <%
                                                } else {%>
                                                <i class="fas fa-lock-open"></i><%
                                                    }%>
                                            </a></td>
                                        <td><a href="home_admin.jsp?panel=panel_editar_mesa" class="btn btn-warning btn-xs" >Modificar</a></td>
                                    </tr>
                                    <%
                                        }//cierre del for
                                    } else {%>
                                    <tr><td colspan="4" ><br> No se encontraron Registros, Ingresa uno nuevo  :)</td></tr>
                                            <%}%>

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
    <!-- Modal -->
</div>
