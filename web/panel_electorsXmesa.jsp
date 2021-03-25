<%@page import="modelo.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="controlador.UsuarioController"%>
<%
    int mesa_id = Integer.parseInt(request.getSession().getAttribute("mesa").toString());
    UsuarioController consulta = new UsuarioController();
    List<Usuario> lista_usuarios = consulta.ObtenerUsuariosPorMesa(mesa_id);
%>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">ELECTORES PARA MESA <%=mesa_id%></h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Inicio</a></li>
                        <li class="breadcrumb-item active">Electores</li>
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
                            <h5 class="m-0">Habilitacion de Electores</h5>
                        </div>
                        <div class="card-body table-responsive">
                            <table id="maintable" class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nombre</th>
                                        <th>Estado</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% if (lista_usuarios.size() >= 1) {
                                            for (int i = 0; i < lista_usuarios.size(); i++) {
                                    %>
                                    <tr>
                                        <td><strong><%=lista_usuarios.get(i).getId_us()%></strong></td>
                                        <td><%=lista_usuarios.get(i).getNombre()%></td>
                                        <td><%

                                            if (lista_usuarios.get(i).getVoto() == 0) {%>
                                            <button type="submit" class="btn btn-danger">Habilitar</button>

                                            <% } else {%>
                                            <button type="submit" class="btn btn-warning">deshabilitar</button>
                                            <%}%>
                                        </td>
                                    </tr>
                                    <%}
                                        }%>
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
