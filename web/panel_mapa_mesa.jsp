<%@page import="modelo.Mesa"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="controlador.MesaController"%>
<%@page import="controlador.MesaController"%>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBqVmZUlRJxDiwQbP3uCPNn4zYir3SgRzw"></script>
<%
    int id_mesa=Integer.parseInt(request.getSession().getAttribute("mesa").toString());
    MesaController controlmap = new MesaController();
    List<Mesa> milista = controlmap.ObtenerCoordenadas(id_mesa);
%>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Resultados</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Inicio</a></li>
                        <li class="breadcrumb-item active">Resultados</li>
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
                        <div class="card-body">
                         <div id="mapa" style="width: 900px; height: 600px;"></div>
                        </div>
                    </div>
                </div>
                <!-- /.col-md-6 -->
            </div>
            <!-- /.card -->

        </div>
        <!-- /.row -->
    </div><!-- /.container-fluid -->
    <script type="text/javascript">
                //Ubicacion inicial del mapa.
                var ubicacion = new google.maps.LatLng(<%=milista.get(0).getLatitud() %>,<%=milista.get(0).getLongitud()%>); //Latitud y Longitud
                //Parametros Iniciales
                var opciones = {zoom: 8, //acercamiento
                    center: ubicacion,
                    mapTypeId: google.maps.MapTypeId.ROADMAP //Las posibles opciones son ROADMAP/SATELLITE/HYBRID/TERRA
                };

                //Creacion del mapa
                var map = new google.maps.Map(document.getElementById("mapa"), opciones);
                    mi_ubicacion = new google.maps.Marker({
                        position: new google.maps.LatLng(14.104173, -87.186145), //Posición de la marca
                        map: map, //Mapa donde estara la marca
                        title: '<%=milista.get(0).getDescripcion() %>' //Titulo all hacer un mouseover
                    });
        </script>
</div>
