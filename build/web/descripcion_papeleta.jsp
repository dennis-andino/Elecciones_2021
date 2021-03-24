<%@page import="modelo.Papeleta"%>
<%@page import="java.util.List"%>
<%@page import="controlador.PapeletaController"%>


<%
    int partido_id = Integer.parseInt(request.getParameter("partidoid"));
    PapeletaController consulta = new PapeletaController();
    List<Papeleta> lista_presidentes = consulta.Obtenerpresidentes(partido_id);
    List<Papeleta> lista_alcaldes = consulta.ObtenerAlcaldes(partido_id);
    List<Papeleta> lista_diputados = consulta.ObtenerDiputados(partido_id);
    int ultimaCasillaPres = lista_presidentes.size();
    int ultimaCasillaAlc = lista_alcaldes.size();
    int ultimaCasillaDip = lista_diputados.size();
%>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <button type="button" class="btn btn-success btn-xs" data-bs-toggle="modal" data-bs-target="#addcandidato"><i class="fas fa-plus-square"></i></button><button type="button" class="btn btn-danger btn-xs" data-bs-toggle="modal" data-bs-target="#deletecandidato"><i class="fas fa-minus-circle"></i></button>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Papeletas</a></li>
                        <li class="breadcrumb-item active">Descripcion</li>
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
                            <h5 class="m-0"><label>Presidentes</label></h5></div>

                        <!---inicio-->
                        <div class="card-body table-responsive">
                            <table id="maintable" class="table-hover">
                                <tbody>
                                    <%
                                        if (lista_presidentes.size() >= 1) {
                                            for (int i = 0; i < lista_presidentes.size(); i++) {
                                    %>
                                    <%if (i == 10) {%>
                                    <tr>
                                        <%}%>

                                        <td>
                                            <div class="card text-center" style="width: 80px;">
                                                <img src="<%=lista_presidentes.get(i).getFotografia()%>" class="card-img"> 
                                                <label><%=lista_presidentes.get(i).getNombre()%></label><%=lista_presidentes.get(i).getCasilla()%>
                                            </div>
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
                            <h5 class="m-0"><label>Alcaldes</label></h5></div>
                        <!---inicio-->
                        <div class="card-body table-responsive">
                            <table id="maintable" class="table-hover">
                                <tbody>
                                <tbody>

                                    <%
                                        if (lista_alcaldes.size() >= 1) {
                                            for (int i = 0; i < lista_alcaldes.size(); i++) {
                                    %>
                                    <%if (i == 10) {%>
                                    <tr>
                                        <%}%>
                                        <td>
                                            <div class="card text-center" style="width: 80px;">
                                                <img src="<%=lista_alcaldes.get(i).getFotografia()%>" class="card-img"> 
                                                <label><%=lista_alcaldes.get(i).getNombre()%></label><%=lista_alcaldes.get(i).getCasilla()%>
                                            </div>
                                        </td>
                                        <%if (i == 10) {%>
                                    </tr>r>
                                    <%}%>
                                    <%}
                                    } else {%>
                                    <tr><td colspan="4" ><br> No se encontraron Registros, Ingresa uno nuevo  :)</td></tr>
                                            <%}
                                            %>
                                </tbody>
                                </tbody>
                            </table>
                        </div>
                        <!--fin-->
                    </div>
                </div>
                <!-- /.col-md-6 -->
            </div>

            <div class="row">
                <!-- /.col-md-6 -->
                <div class="col">
                    <div class="card card-primary card-outline">
                        <div class="card-header">
                            <h5 class="m-0"><label>diputados</label></h5></div>
                        <!---inicio-->
                        <div class="card-body table-responsive">

                            <table id="maintable" class="table-hover">
                                <tbody>


                                    <%
                                        if (lista_diputados.size() >= 1) {
                                            for (int i = 0; i < lista_diputados.size(); i++) {
                                    %>
                                    <%if (i == 10) {%>
                                    <tr>
                                        <%}%>
                                        <td>
                                            <div class="card text-center" style="width: 80px;">
                                                <img src="<%=lista_diputados.get(i).getFotografia()%>" class="card-img"> 
                                                <label><%=lista_diputados.get(i).getNombre()%></label><%=lista_diputados.get(i).getCasilla()%>
                                            </div>
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
                <!-- /.col-md-6 -->
            </div>
            <!-- /.card -->

        </div>
        <!-- /.row -->
    </div><!-- /.container-fluid -->
    <!--modals -->



    <!-- Modal para agregar candidato -->
    <div class="modal fade" id="addcandidato" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Agregar Candidato</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="DAOpapeletas.jsp" method="GET">
                        <input type="hidden" name="partidoid" value="<%=partido_id%>">
                        <input type="hidden" name="casilla_p" value="<%=ultimaCasillaPres + 1%>">
                        <input type="hidden" name="casilla_a"  value="<%=ultimaCasillaAlc + 1%>">
                        <input type="hidden" name="casilla_d"value="<%=ultimaCasillaDip + 1%>">
                        <div class="input-group mb-3">
                            <select name="tipo_candidatura" class="form-select" aria-label="Default select example">
                                <option selected>Tipo de candidatura</option>
                                <option value="1">Presidente</option>
                                <option value="2">Alcalde</option>
                                <option value="3">Diputado</option>
                            </select>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1"><i class="fas fa-address-card"></i></span>
                            <input type="text" class="form-control" name="candidato" placeholder="Ingrese el ID/DNI del candidato" aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                        <div id="emailHelp" class="form-text"><label>Nota: </label>El candidato debe estar registrado en el sistema.</div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                    <button type="submit" name="accion" value="agregar" class="btn btn-primary">Agregar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- fin modal 
    <!-- Modal para eliminar candidato -->
    <div class="modal fade" id="deletecandidato" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Eliminar Candidato</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="DAOpapeletas.jsp" method="POST">
                        <input type="hidden" name="partidoid" value="<%=partido_id%>">
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1"><i class="fas fa-sort-numeric-up"></i></span>
                            <input type="text" name="idcandidato" class="form-control" placeholder="Ingrese el ID/DNI del candidato a eliminar" aria-label="Default select example" aria-describedby="basic-addon1">
                        </div>
                        <div id="emailHelp" class="form-text"><label>Nota: </label> Unicante numeros sin guiones ni caracteres especiales.</div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                    <button type="submit" name="accion" value="eliminar" class="btn btn-primary">Eliminar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
