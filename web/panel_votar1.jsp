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
                                        <tr>
                                            <td>
                                                <div class="card text-center" style="width: 80px;">
                                                    <img src="<%="imagenes/" + request.getSession().getAttribute("fotografia")%>" class="card-img"> 
                                                    <label>Nombre<br>5</label>
                                                </div>
                                    <center><input type="radio" name="presidente" value="10"></center>
                                    </td>
                                    <td>
                                        <div class="card text-center" style="width: 80px;">
                                            <img src="<%="imagenes/" + request.getSession().getAttribute("fotografia")%>" class="card-img"> 
                                             <label>Nombre<br>5</label>
                                        </div>
                                    <center><input type="radio" name="presidente" value="9"></center>
                                    </td>
                                    <td>
                                        <div class="card text-center" style="width: 80px;">
                                            <img src="<%="imagenes/" + request.getSession().getAttribute("fotografia")%>" class="card-img"> 
                                             <label>Nombre<br>5</label>
                                        </div>
                                    <center><input type="radio" name="presidente" value="8"></center>
                                    </td>
                                    </tr>
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
                                        <tr>
                                            <td>
                                                <div class="card text-center" style="width: 80px;">
                                                    <img src="<%="imagenes/" + request.getSession().getAttribute("fotografia")%>" class="card-img"> 
                                                    <label>Nombre<br>5</label>
                                                </div>
                                    <center><input type="radio" name="alcalde" value="5"></center>
                                    </td>
                                    <td>
                                        <div class="card text-center" style="width: 80px;">
                                            <img src="<%="imagenes/" + request.getSession().getAttribute("fotografia")%>" class="card-img"> 
                                            <label>Nombre<br>5</label>
                                        </div>
                                    <center><input type="radio" name="alcalde" value="6"></center>
                                    </td>
                                    <td>
                                        <div class="card text-center" style="width: 80px;">
                                            <img src="<%="imagenes/" + request.getSession().getAttribute("fotografia")%>" class="card-img"> 
                                           <label>Nombre<br>5</label>
                                        </div>
                                    <center><input type="radio" name="alcalde" value="7"></center>
                                    </td>
                                  
                                  
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!--fin-->
                              <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Guardar y continuar </button>
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
