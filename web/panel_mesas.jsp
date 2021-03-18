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
                           <h5 class="m-0"><label>Mesas Activas</label><button type="button" class="btn btn-success btn-xs" data-bs-toggle="modal" data-bs-target="#addMesa"><i class="fas fa-plus-square"></i></h5>
                        </div>
                        <div class="card-body table-responsive">
                            <table id="maintable" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Presidente</th>
                                    <th>Secretario</th>
                                    <th>Vocal</th>
                                    <th>Departamento</th>
                                    <th>ciudad</th>
                                    <th>Ubicacion</th>
                                    <th>Electores</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                
                                        <tr>
                                            <td><strong>1</strong></td>
                                            <td>Jose Santos</td>
                                            <td>Maria Jose</td>
                                            <td>Pedro picapiedra</td>
                                            <td>Francisco Morazan</td>
                                            <td>Tegucigalpa</td>
                                            <td><a href="home_admin.jsp?panel=MapsMesas">Las minitas 3era etapa</a></td>
                                            <td><a href="home_admin.jsp?panel=panel_electores">500</a></td>
                                              <td><button type="button" class="btn btn-warning btn-xs" data-bs-toggle="modal" data-bs-target="#editMesaModal">Modificar</button></td>
                                        </tr>
                                       
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
<div class="modal fade" id="editMesaModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Editar Mesa</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary">Actualizar</button>
      </div>
    </div>
  </div>
</div>
    <div class="modal fade" id="addMesa" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Agregar Mesa</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary">Guardar</button>
      </div>
    </div>
  </div>
</div>
</div>
