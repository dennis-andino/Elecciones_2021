<%@page import="java.util.List"%>
<%@page import="modelo.Partido"%>
<%@page import="controlador.PartidoController"%>
<%
    PartidoController consulta = new PartidoController();
    List<Partido> lista_partidos = consulta.ObtenerPartidos();
%>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Gestión de Partidos Politicos</h1>
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
                            <h5 class="m-0">Agregar Nuevo Partido</h5>
                        </div>
                        <div class="card-header">
                            <form action="DAOpartidos.jsp?accion=nuevo" method="POST" enctype="multipart/form-data">
                                <div class="row">
                                    <div class="form-group col-1"></div>
                                    <div class="form-group col-3"><input type="file" class="form-control form-control-sm" name="logo"  required></div>
                                    <div class="form-group col-3"><input type="text" class="form-control form-control-sm" name="nombre" placeholder="Nombre" required></div>
                                    <div class="form-group col-3"><input type="text" class="form-control form-control-sm" name="descripcion" placeholder="Descripción" required></div>
                                    <div class="form-group col-2"><button type="submit" class="btn btn-warning btn-sm">Agregar</button></div>
                                </div>
                            </form>
                        </div>
                        <div class="card-body table-responsive">
                            <table id="maintable" class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Logo</th>
                                        <th>Nombre</th>
                                        <th>Descripción</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% if (lista_partidos.size() >= 1) {
                                            for (int i = 0; i < lista_partidos.size(); i++) {
                                    %>
                                    <tr>
                                        <td><strong><%=lista_partidos.get(i).getId()%></strong></td>
                                        <td><img src="<%=lista_partidos.get(i).getLogo()%>" width="80" height="40"></td>
                                        <td><strong><%=lista_partidos.get(i).getNombre() %></strong></td>
                                        <td><%=lista_partidos.get(i).getDescripcion() %></td>
                                        <td>
                                            <button type="button" value="" class="btn btn-warning btn-sm"><i class="fas fa-edit"></i></button>
                                            <form method="post" action="DAOpartidos.jsp" style="display: inline-block;">
                                                  <input type="hidden" name="idpartido" value="<%=lista_partidos.get(i).getId()%>">
                                                <button type="submit" class="btn btn-danger btn-sm"  name="accion" value="eliminar"><i class="far fa-trash-alt"></i></button>
                                            </form>
                                        </td>
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
</div>
