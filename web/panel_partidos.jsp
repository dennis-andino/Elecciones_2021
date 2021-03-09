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
                            <form action="<?=base_url.'database/backUp'?>" method="post">
                                <div class="row">
                                    <div class="form-group col-4"></div>
                                    <div class="form-group col-3"><input type="text" class="form-control form-control-sm" name="" placeholder="Nombre" required></div>
                                    <div class="form-group col-3"><input type="text" class="form-control form-control-sm" name="" placeholder="Descripción" required></div>
                                  
                                    <div class="form-group col-2"><button type="submit" class="btn btn-warning btn-sm ">Agregar</button></div>
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
                                
                                        <tr>
                                            <td><strong>1</strong></td>
                                            <td><img src="imagenes/honduras.png" width="80"></td>
                                            <td><strong> Honduras Prospera</strong></td>
                                            <td>Partido izquierdista fundado en 1945 por Joseth de la sierra.</td>
                                            <td>
                                                <a role="button" class="btn btn-info btn-sm" href="#">Editar</a>
                                                <form method="post" action="#" style="display: inline-block;">
                                                    <button type="submit" class="btn btn-warning btn-sm" >Eliminar</button>
                                               </form>
                                            </td>
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
</div>
