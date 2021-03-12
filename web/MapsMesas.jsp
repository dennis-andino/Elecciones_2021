<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAPqaY-K1Q0YEtqdO08W1Vv8KMrdSM8h2o"></script>
<script>
    function initMap() {
        var map;
        var bounds = new google.maps.LatLngBounds();
        var mapOptions = {
            mapTypeId: 'roadmap'
        };
        // Display a map on the web page
        map = new google.maps.Map(document.getElementById("mapCanvas"), mapOptions);
        map.setTilt(50);
        // Multiple markers location, latitude, and longitude
        var markers = [
    <% for (int i = 0; i < milista.size(); i++) {
            out.print("['" + milista.get(i).getNombre() + "'," + milista.get(i).getLatitud() + "," + milista.get(i).getLongitud() + "],");
        }%>];
        // Info window content
        var infoWindowContent = [
    <%
        for (int j = 0; j < milista.size(); j++) {
    %>
            ['<div class="info_content">' +
                    '<h3><%=milista.get(j).getNombre()%></h3>' +
                    '<p><%=milista.get(j).getEmailCli()%></p>' + '</div>'],
    <%
        }
    %>
        ];

        // Add multiple markers to map
        var infoWindow = new google.maps.InfoWindow(), marker, i;

        // Place each marker on the map
        for (i = 0; i < markers.length; i++) {
            var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
            bounds.extend(position);
            marker = new google.maps.Marker({
                position: position,
                map: map,
                title: markers[i][0]
            });

            // Add info window to marker
            google.maps.event.addListener(marker, 'click', (function (marker, i) {
                return function () {
                    infoWindow.setContent(infoWindowContent[i][0]);
                    infoWindow.open(map, marker);
                }
            })(marker, i));

            // Center the map to fit all markers on the screen
            map.fitBounds(bounds);
        }

        // Set zoom level
        var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function (event) {
            this.setZoom(6);
            google.maps.event.removeListener(boundsListener);
        });

    }

    // Load initialize function
    google.maps.event.addDomListener(window, 'load', initMap);
</script>

<style>
    #mapCanvas {
        width: 100%;
        height: 650px;
    }
</style>


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
                        <li class="breadcrumb-item"><a href="home_admin.jsp?panel=panel_mesas">Mesas</a></li>
                        <li class="breadcrumb-item active">Ubicaciones</li>
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
                            <h5 class="m-0">Ubicacion de Mesa</h5>
                        </div>
                        <div class="card-body table-responsive">
                            <h5 class="card-title">Mesas Electorales</h5>
                            <div id="mapCanvas"></div>
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
