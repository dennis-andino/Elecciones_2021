<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Nuevo Usuario</h1>
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
                            <h5 class="m-0"><label>Datos de usuario</label></div>
                        <div class="card-body table-responsive">
                            <form action="DAOusuarios.jsp" method="POST">
                                <div class="form-row">
                                    <div class="form-group col-md-2">
                                        <label for="id">ID/DNI</label>
                                        <input type="text" class="form-control form-control-sm" id="id" name="id" required>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="nombre">Nombre</label>
                                        <input type="text" class="form-control form-control-sm" id="nombre" name="nombre" required>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="nacimiento">Fecha de Nacimiento: </label>
                                        <input type="date" class="form-control form-control-sm" id="nacimiento" name="nacimiento" required>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="direccion">Direccion domicilio</label>
                                        <input type="text" class="form-control form-control-sm" id="direccion" name="direccion" required>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <label for="correo">Correo: </label>
                                        <input type="email" class="form-control form-control-sm" id="correo" name="correo" required>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="telefono">Telefono: </label>
                                        <input type="text" class="form-control form-control-sm" id="telefono" name="telefono" required>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="fotografia">Fotografia: </label>
                                        <input type="text" class="form-control form-control-sm" id="fotografia" name="fotografia" required>
                                    </div>
                                </div>
                                <div class="form-row">
                                     <div class="form-group col-md-4">
                                        <label for="clave">Clave de acceso</label>
                                        <input type="text" class="form-control form-control-sm" id="clave" name="clave" >
                                   
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="mesa">Mesa Electoral</label> <a href=""><i class="fas fa-search"></i></a>
                                        <input type="number" class="form-control form-control-sm" name="mesa" id="mesa" >
                                   
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="rol">Tipo de usuario</label>
                                        <select name="rol" class="form-control form-control-sm form-select" aria-label="Default select example">
                                            <option selected>Tipo de candidatura</option>
                                            <option value="0">Elector</option>
                                            <option value="3">Magistrado</option>
                                            <option value="1">Administrador</option>
                                        </select>
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
