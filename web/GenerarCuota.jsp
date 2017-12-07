<%-- 
    Document   : GenerarCuota
    Created on : 11/06/2017, 05:01:05 PM
    Author     : Edwin Vargas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css">
        <title>Campiña II - Generar Cuotas</title>
    </head>
    <body>

        <%-- Menu --%>
        <%@include file="menu.jsp" %>

        <section class="main container">
            <div class="row">
                <section class="col-lg-12">
                    <div class="miga-de-pan">
                        <ol class="breadcrumb">
                            <li><a href="index.jsp">Inicio</a></li>
                            <li class="active">Generar Cuota</li>
                        </ol>
                    </div>
                    <aside class="col-md-3 hidden-xs hidden-sm">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Seleccione Departamento</h3>
                            </div>
                            <div class="panel-body">
                                <form>
                                    <div class="form-group">
                                        <label for="depto">Departamento:</label>
                                        <select class="form-control" id="ListaViviendas">

                                        </select>
                                    </div>
                                </form>
                                <button type="button" class="btn btn-primary" id="btnCargar">Cargar</button>
                                <button type="file" class="btn btn-warning" id="btnImportar">Importar Excel</button>
                            </div>
                        </div>
                    </aside>
                    <section class="posts col-md-9">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Ingrese Datos</h3>
                            </div>
                            <div class="panel-body">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label for="txtConcepto" class="col-sm-3 control-label">Concepto:</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="txtConcepto" placeholder="Concepto">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtmonto" class="col-sm-3 control-label">Monto:</label>
                                        <div class="col-sm-9">

                                            <label class="sr-only" for="exampleInputAmount">Monto (en Soles)</label>
                                            <div class="input-group">
                                                <div class="input-group-addon">S/.</div>
                                                <input type="text" class="form-control" id="txtmonto" placeholder="Monto">

                                            </div>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="datetimepicker1" class="col-sm-3 control-label">Fecha de Emision:</label>
                                        <div class="col-sm-9">
                                            <div class='input-group date' id='datetimepicker1'>
                                                <input type='text' class="form-control" id="FechaEmi"/>
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="datetimepicker2" class="col-sm-3 control-label">Fecha de Vencimiento:</label>
                                        <div class="col-sm-9">
                                            <div class='input-group date' id='datetimepicker2'>
                                                <input type='text' class="form-control" id="FechaVen" />
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="CPresu" class="col-sm-3 control-label">Clase Presupuestal:</label>
                                        <div class="col-sm-9">
                                            <select class="form-control" id="CPresu">

                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="TipoFondo" class="col-sm-3 control-label">Tipo de Fondo:</label>
                                        <div class="col-sm-9">
                                            <select class="form-control" id="TipoFondo">
                                                <option value="01">Fondo Ordinario</option>
                                                <option value="02">Fondo Extraordinario</option>
                                                <option value="03">Fondo Reserva</option>
                                            </select>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="panel-footer">
                                <button type="button" class="btn btn-primary" id="btnSave">Agregar</button>
                            </div>
                        </div>

                    </section>

                </section>

            </div>
        </section>



        <%-- Footer --%>
        <%@include file="footer.jsp" %>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/moment-with-locales.js"></script>
        <script src="js/bootstrap-datetimepicker.min.js"></script>
        <script>
            $(document).ready(function () {
                $.ajax({
                    type: "GET",
                    url: "mttoVivienda.do",
                    dataType: "json",
                    success: function (response) {
                        var response = response.listaviviendas;
                        var opciones = '';
                        for (var x = 0; x < response.length; x++) {
                            opciones += '<option value="' + response[x].IdVivienda + '">'
                                    + response[x].Comentario + '</option>'
                        }
                        $('#ListaViviendas').append(opciones);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "ClasePresupuestal.do",
                    dataType: "json",
                    success: function (response) {
                        var response = response.clasepre;
                        var opciones = '';
                        for (var x = 0; x < response.length; x++) {
                            opciones += '<option value="' + response[x].IdCPresupuetal + '">'
                                    + response[x].Descripcion + '</option>'
                        }
                        $('#CPresu').append(opciones);
                    }
                });
                $('body').on('click', '#btnSave', function (e) {
                    var FechaEmision = $('#FechaEmi').val();
                    var FechaVen = $('#FechaVen').val();
                    var Concepto = $('#txtConcepto').val();
                    var Monto = $('#txtmonto').val();
                    var Estado = 'Pendiente';
                    var IdCPresupuetal = $('#CPresu').val();
                    var IdVivienda = $('#ListaViviendas').val();
                    var IdTipoFondo = $('#TipoFondo').val();
                    var data = {IdCuota: 0, FechaEmision: FechaEmision, FechaVen: FechaVen, Concepto: Concepto, Monto: Monto, Estado: Estado, IdCPresupuetal: IdCPresupuetal, IdVivienda: IdVivienda, IdTipoFondo: IdTipoFondo};
                    $.ajax({
                        type: 'POST',
                        data: JSON.stringify(data),
                        url: 'GenerarCuota.do',
                        dataType: 'json',
                        success: function (response) {
                            alert(response.message);
                        }
                    });
                });
            });
        </script>  
        <script>

            $(function () {
                $('#datetimepicker1').datetimepicker({
                    locale: 'es',
                    format: 'DD/MM/YYYY'
                });
            });
            $(function () {
                $('#datetimepicker2').datetimepicker({
                    locale: 'es',
                    format: 'DD/MM/YYYY'
                });
            });

        </script>
        <script src="js/moment-with-locales.js"></script>
        <script src="js/bootstrap-datetimepicker.min.js"></script>
    </body>
</html>

