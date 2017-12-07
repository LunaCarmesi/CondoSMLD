<%-- 
    Document   : menu
    Created on : 13/05/2017, 02:24:25 PM
    Author     : Jean Pierre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<header>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navegation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navegacion-fm">
                    <span class="sr-only">Desplegar / Ocultar Menu</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="index.jsp" class="navbar-brand">Adminitracion de Condominio</a>
            </div>
            <!-- inicia menu-->
            <div class="collapse navbar-collapse" id="navegacion-fm">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.jsp">Inicio</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Directorio
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="mttoSeccion.jsp">Directorio de Secciones</a></li>
                            <!--<li class="divider"></li>-->
                            <li><a href="mttoEmpleados.jsp">Directorio de Empleados</a></li>
                            <li><a href="mttoVivienda.jsp">Directorio de Viviendas</a></li>
                            <li><a href="mttoResidente.jsp">Directorio de Residentes</a></li>
                            <li><a href="mttoVehiculo.jsp">Directorio de Vehiculos</a></li>
                            <li><a href="mttoProveedor.jsp">Directorio de Proveedores</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Registrar
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="Ingreso.jsp">Un Ingreso</a></li>
                            <li><a href="Egreso.jsp">Un Egreso</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Consultar
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="EstCtaBanco.jsp">Banco y Cajas</a></li>
                            <li><a href="#">Estado de Cta. Vivienda</a></li>
                        </ul>
                    </li>
                    <li><a href="GenerarCuota.jsp">Generar Cuotas</a></li>
                    <li><a href="login.jsp">Salir</a></li>
                </ul>

            </div>
        </div>
    </nav>
</header>
<section class="jumbotron">
    <div class="container">
        <img src="images/logo.png">
    </div>
</section>
