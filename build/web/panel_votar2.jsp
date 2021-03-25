<%@page import="modelo.Papeleta"%>
<%@page import="java.util.List"%>
<%@page import="controlador.PapeletaController"%>
<%
    int id_dep = Integer.parseInt(request.getSession().getAttribute("departamento").toString());
    PapeletaController consulta = new PapeletaController();
    List<Papeleta> lista_diputados = consulta.ObtenerDiputadosPorDepartamento(id_dep);
    String presidente=request.getParameter("presidente").trim();
    String alcalde=request.getParameter("alcalde").trim();
%>
<script type="text/javascript">
var contador = 0;
function validar() {
for (var i=0;i < document.forms["diputados"].elements.length;i++) {
inpt = document.forms[0].elements[i]; 
if (inpt.checked) { 
contador++;
} 
} 
if(contador!==3) {
alert('Debes elegir 3 diputados para tu municipio.');
contador = 0;
return false;
}
}
</script>
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
                        <li class="breadcrumb-item"><a href="#">Papeletas</a></li>
                        <li class="breadcrumb-item active">Papeleta 2</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <form action="DAOvotar.jsp"  method="POST" name="diputados" onsubmit="return validar();">
                <input type="hidden" name="presidente" value="<%=presidente%>"> 
                <input type="hidden" name="alcalde" value="<%=alcalde%>"> 
                <div class="row">
                    <!-- /.col-md-6 -->
                    <div class="col">
                        <div class="card card-primary card-outline">
                            <div class="card-header">
                                <h5 class="m-0">Diputados</h5>
                            </div>
                            <!---inicio-->
                            <div class="card-body table-responsive">
                                <table id="maintable" class="table-hover">
                                    <tbody>
                                        <%
                                             if (lista_diputados.size() >= 1) {
                                                 for (int i = 0; i < lista_diputados.size(); i++) {%>
                                        <%  if (i == 10) {%>
                                        <tr>
                                            <%}%>
                                            <td>
                                                <div class="card text-center" style="width: 100px;">
                                                    <img src="<%=lista_diputados.get(i).getFotografia()%>" class="card-img"> 
                                                    <label><%=lista_diputados.get(i).getNombre()%><br><%=lista_diputados.get(i).getCasilla()%></label>
                                                </div>
                                    <center><input type="checkbox" name="diputados" value="<%=lista_diputados.get(i).getId_candidato() %>"></center>
                                    </td>
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
                                <button type="submit" class="btn btn-primary">Guardar y finalizar</button>
                            </div>
                            </form>
                        </div>
                    </div>
                    <!-- /.col-md-6 -->
                </div>
                <!-- /.card -->

        </div>
        <!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
