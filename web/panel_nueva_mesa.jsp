<%@page import="modelo.Municipio"%>
<%@page import="java.util.List"%>
<%@page import="controlador.MunicipioController"%>
<%
    MunicipioController consulta = new MunicipioController();
    List<Municipio> lista_municipios = consulta.ObtenerMunicipios();
%>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Gestión de Mesas Electorales</h1>
                </div><!-- /.col -->
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
                            <h5 class="m-0"><label>Nueva Mesa Electoral</label></div>
                        <div class="card-body table-responsive">
                            <form action="DAOmesas.jsp" method="POST">
                                <div class="form-row">
                                    <div class="form-group col-md-7">
                                        <label for="descripcion">Descripcion de mesa</label>
                                        <input type="text" class="form-control form-control-sm" id="descripcion" name="descripcion" required>
                                    </div>
                                    <div class="form-group col-md-5">
                                        <label for="municipio">Municipio : </label>
                                        <select id="municipio" name="municipio" class="form-control form-control-sm" required>
                                            <option selected>seleccione un municipio</option>
                                            <% if (lista_municipios.size() >= 1) {
                                                    for (int i = 0; i < lista_municipios.size(); i++) {
                                            %>
                                            <option value="<%=lista_municipios.get(i).getId_municipio()%>"><%=lista_municipios.get(i).getNombre_municipio() + "(" + lista_municipios.get(i).getNombre_departamento() + ")" %></option>

                                            <%
                                                    }
                                                }
                                            %>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <label for="presidente">ID Presidente: </label>
                                        <input type="text" class="form-control form-control-sm" id="presidente" name="presidente" minlength="8"  required>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="secretario">ID secretario </label>
                                        <input type="text" class="form-control form-control-sm" id="secretario" name="secretario" minlength="8" required>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="vocal">ID Vocal: </label>
                                        <input type="text" class="form-control form-control-sm" id="vocal" name="vocal" minlength="8" required>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="latitud">Latitud: </label>
                                        <input type="text" class="form-control form-control-sm"  id="latitud" name="latitud" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="longitud">Longitud: </label>
                                        <input type="text" class="form-control form-control-sm" id="longitud" name="longitud" required>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">    
                                           <a href="home_admin.jsp?panel=panel_mesas" class="btn btn-secondary btn-sm">Cancelar</a>
                                        <button type="submit" name="accion" value="agregar" class="btn btn-primary btn-sm">Registrar</button>
                                    </div>
                                </div>

                            </form>
                        </div> 
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- /.col-md-6 -->
</div>
<!-- /.card -->
<!-- /.row -->


<!-- /.container-fluid -->

