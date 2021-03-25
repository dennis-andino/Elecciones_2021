<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark"><%=request.getSession().getAttribute("descripcion_mesa").toString() %></h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Inicio</a></li>
                        <li class="breadcrumb-item active">Mi Mesa</li>
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
                            <h5 class="m-0">Estado de Mesa</h5>
                        </div>
                        <div class="card-body">
                            <%
                                int mesa=Integer.parseInt(request.getSession().getAttribute("mesa").toString()) ;
                            int estado_mesa=Integer.parseInt(request.getSession().getAttribute("estado_mesa").toString()) ;
                            if (estado_mesa==0){
                            %>
                            <div class="alert alert-warning" role="alert">
                               <label>La Mesa aun no ha aperturado !</label>
                            </div>
                            <%}else{%>
                             <div class="alert alert-success" role="alert">
                                 <label> Mesa aperturada !</label>
                            </div>
                             <%}%>
                        </div>
                        <div class="card-footer">
                             <%
                            if (estado_mesa==0){
                            %>
                            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                <a href="DAOmesas.jsp?accion=abrir&id=<%=mesa%>" class="btn btn-danger me-md-2" type="button">Aperturar Mesa</a>
                            </div>
                             <%}else{%>
                             <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                <a href="DAOmesas.jsp?accion=cerrar&id=<%=mesa%>" class="btn btn-danger me-md-2" type="button">Cerrar Mesa</a>
                            </div>
                             <%}%>
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
