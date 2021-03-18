<%@page import="controlador.EstadisticasController"%>
<%
    EstadisticasController datos = new EstadisticasController();
    String result_presi[] = new String[2];
    String result_alcalde[] = new String[2];
    result_presi = datos.ResultadosPorPresidente();
    result_alcalde = datos.ResultadosPorAlcalde();
%>

<style type="text/css">
    .highcharts-figure, .highcharts-data-table table {
        min-width: 320px;
        max-width: 800px;
        margin: 1em auto;
    }

    .highcharts-data-table table {
        font-family: Verdana, sans-serif;
        border-collapse: collapse;
        border: 1px solid #EBEBEB;
        margin: 10px auto;
        text-align: center;
        width: 100%;
        max-width: 500px;
    }
    .highcharts-data-table caption {
        padding: 1em 0;
        font-size: 1.2em;
        color: #555;
    }
    .highcharts-data-table th {
        font-weight: 600;
        padding: 0.5em;
    }
    .highcharts-data-table td, .highcharts-data-table th, .highcharts-data-table caption {
        padding: 0.5em;
    }
    .highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even) {
        background: #f8f8f8;
    }
    .highcharts-data-table tr:hover {
        background: #f1f7ff;
    }


    input[type="number"] {
        min-width: 50px;
    }
</style>
<script src="assets/js/charts/highcharts.js"></script>
<script src="assets/js/charts/modules/exporting.js"></script>
<script src="assets/js/charts/modules/export-data.js"></script>
<script src="assets/js/charts/modules/accessibility.js"></script>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Ultimos Resultados</h1>
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
                        <div class="card-header">
                            <h5 class="m-0">Presidentes</h5>
                        </div>
                        <div class="card-body">
                            <div class="card-body" id="result_presi"></div>
                        </div>
                    </div>
                </div>
                <!-- /.col-md-6 -->
            </div>
            <div class="row">
                <!-- /.col-md-6 -->
                <div class="col">
                    <div class="card card-primary card-outline">
                        <div class="card-header">
                            <h5 class="m-0">Alcaldes</h5>
                        </div>
                        <div class="card-body">
                            <div class="card-body" id="result_alcalde"></div>
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
<script>
    $(function () {
        var chartOptions = {
            chart: {
                renderTo: 'result_presi',
                type: 'bar'
            },
            title: {
                text: 'Estadisticas para candidatos a la presidencia'
            },
            xAxis: {
                categories: [<%=result_presi[0]%>]
            },
            yAxis: {
                title: 'value'
            },
            series: [{
                    name: 'Votos',
                    data: [<%=result_presi[1]%>]
                }]
        }

        var chart = new Highcharts.Chart(chartOptions);
    });
</script>
<script>
    $(function () {
        var chartOptions = {
            chart: {
                renderTo: 'result_alcalde',
                type: 'column'
            },
            title: {
                text: 'Estadisticas para candidatos a alcaldia'
            },
            xAxis: {
                categories: [<%=result_alcalde[0]%>]
            },
            yAxis: {
                title: 'value'
            },
            series: [{
                    name: 'Votos',
                    data: [<%=result_alcalde[1]%>]
                }]
        }

        var chart = new Highcharts.Chart(chartOptions);
    });
</script>
