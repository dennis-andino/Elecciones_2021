<%@page import="modelo.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="controlador.UsuarioController"%>
<%
    int rol = Integer.parseInt(request.getParameter("rol"));
    UsuarioController consulta = new UsuarioController();
    List<Usuario> lista_usuarios = consulta.ObtenerUsuarios(rol);
%>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <!--<h1 class="m-0 text-dark">Gestión de Usuarios</h1>-->
                      <a href="home_admin.jsp?panel=panel_nuevo_usuario" class="btn btn-info btn-sm"><i class="fas fa-plus-square"></i></a>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Inicio</a></li>
                        <li class="breadcrumb-item active">Usuarios</li>
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
                            <h5 class="m-0">Gestión de Usuarios</h5>
                        </div>
                        <div class="card-body table-responsive">
                            <table id="maintable" class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nombre</th>
                                        <th>Direccion</th>
                                        <th>Correo</th>
                                        <th>Mesa</th>
                                        <th>Habilitado</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% if (lista_usuarios.size() >= 1) {
                                            for (int i = 0; i < lista_usuarios.size(); i++) {
                                    %>
                                    <tr>
                                        <td><strong><%=lista_usuarios.get(i).getId_us() %></strong></td>
                                        <td><%=lista_usuarios.get(i).getNombre() %></td>
                                        <td><%=lista_usuarios.get(i).getDireccion() %></td>
                                        <td><%=lista_usuarios.get(i).getCorreo() %></td>
                                        <td><%=lista_usuarios.get(i).getMesa() %></td>
                                        <td><%=lista_usuarios.get(i).getVoto() %></td>
                                        <td>Modificar</td>
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
