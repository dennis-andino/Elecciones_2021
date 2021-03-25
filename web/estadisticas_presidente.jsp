<%@page import="controlador.EstadisticasController"%>
<%
    EstadisticasController datos = new EstadisticasController();
      String result_presi[] = datos.ResultadosPresidenteDep();
    String pie=datos.ResultadosPorPresidentePie().trim();
   
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
                    <h1 class="m-0 text-dark">Estadísticas</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Resultados</a></li>
                        <li class="breadcrumb-item active">Presidente</li>
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
                <div class="col-lg-6">
                    <div class="card card-success card-outline">
                        <div class="card-header">
                            <h5 class="m-0">Votos Para Presidente Por Departamento</h5>
                        </div>
                        <div class="card-body" id="presxdep"></div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="card card-success card-outline">
                        <div class="card-header">
                            <h5 class="m-0">Votos por presidente</h5>
                        </div>
                        <div class="card-body" id="presidentes_pie"></div>
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
    $(function() {
        var chartOptions = {
            chart: {
                renderTo: 'presxdep',
                type: 'bar'
            },
            title: {
                text: 'Votos por departamento'
            },
            xAxis: {
                categories: [<%=result_presi[0]%>]
            },
            yAxis: {
                title: 'value'
            },
            series: [{
                name: 'votos',
                data: [<%=result_presi[1]%>]
            }]
        }

        var chart = new Highcharts.Chart(chartOptions);
    });
</script>

<script type="text/javascript">
    Highcharts.chart('presidentes_pie', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: 'votos por presidente'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        accessibility: {
            point: {
                valueSuffix: '%'
            }
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                }
            }
        },
        series: [{
            name: 'Brands',
            colorByPoint: true,
            data:  [<%=pie%>]
        }]
    });
</script>