<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <%@include file="librerias.jsp" %>
    <title>Sistema de Elecciones</title>
</head>
<body class="hold-transition sidebar-mini sidebar-collapse" onload="noback();">
    <div class="wrapper">
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-dark navbar-navy">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="<?=base_url.'home/student'?>" class="nav-link">Inicio</a>
                </li>
            </ul>
            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="salir.jsp" role="button"> Cerrar sesión<i class="fas fa-power-off"></i></a></li>
            </ul>
        </nav>
        <!-- /.navbar -->
        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="#" class="brand-link navbar-navy">
                <img src="imagenes/logo.png" class="brand-image img-circle elevation-3">
                <span class="brand-text font-weight-light">TSE</span>
            </a>
            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="<%=request.getSession().getAttribute("fotografia")%>" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        <a href="#" class="d-block"><%=request.getSession().getAttribute("nombre")%></a>
                           <a href="#" class="d-block">Miembro de Mesa</a>
                    </div>
                </div>

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <li class="nav-item">
                            <a href="home_miembro.jsp?panel=panel_mesa" class="nav-link">
                                <i class="nav-icon fas fa-democrat"></i>
                                <p>Mesa Electoral</p>
                            </a>
                        </li>
                        <%
                        int estado_mesa=Integer.parseInt(request.getSession().getAttribute("estado_mesa").toString()) ;
                        if(estado_mesa==1){
                        %>
                        <li class="nav-item">
                            <a href="home_miembro.jsp?panel=panel_electorsXmesa" class="nav-link">
                                <i class="nav-icon fas fa-users"></i>
                                <p>Electores de mesa</p>
                            </a>
                        </li>
                        <%}%>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                               <i class="nav-icon fas fa-poll"></i>
                                <p>Resultados de mesa<i class="fas fa-angle-left right"></i></p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="home_miembro.jsp?panel=estadisticas_presi_mesa" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Presidentes</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="home_miembro.jsp?panel=estadisticas_alca_mesa" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Alcaldes</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="home_miembro.jsp?panel=esatdisticas_dipu_mesa" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Diputados</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="home_miembro.jsp?panel=panel_mapa_mesa" class="nav-link">
                                <i class="nav-icon  fas fa-map-marker-alt"></i>
                                <p>Ubicacion de mesa</p>
                            </a>
                        </li>
                       <%
                        if(request.getSession().getAttribute("voto").toString().equalsIgnoreCase("1")){
                        %>
                        <li class="nav-item">
                            <a href="home_admin.jsp?panel=panel_votar1" class="nav-link">
                                <i class="nav-icon fas fa-person-booth"></i>
                                <p>Votar</p>
                            </a>
                        </li>
                        <%}%>
                        <li class="nav-item">
                            <a href="salir.jsp" class="nav-link">
                                <i class="nav-icon fas fa-sign-out-alt"></i>
                                <p>Salir del sistema</p>
                            </a>
                        </li>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>
        <!-- inicio Panel-->

        <%
            String panel = "panel_partidos.jsp";
            if (request.getParameter("panel") != null) {
                panel = request.getParameter("panel").toString().trim();
            }
        %>
        <jsp:include page='<%=panel + ".jsp"%>'/>
        <!-- Final Panel-->

        <!-- Main Footer -->
        <%@include file="footer.jsp" %>
    </div>
    <!-- ./wrapper -->

    
       <script src="assets/js/tablesFormats.js"></script>
</body>
</html>

