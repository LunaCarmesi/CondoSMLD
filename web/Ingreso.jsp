<%-- 
    Document   : Ingreso
    Created on : 11/06/2017, 09:08:54 PM
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

        <title>Campiña II - Registrar Ingreso</title>
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
                            <li class="active">Registrar Ingreso</li>
                        </ol>
                    </div>
                    <aside class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Datos del Departamento</h3>
                            </div>
                            <div class="panel-body">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label for="depto" class="col-sm-4 control-label">Departamento:</label>
                                        <div class="col-sm-4">
                                            <select class="form-control" id="ListaViviendas">

                                            </select>
                                        </div>
                                        <button type="button" class="col-sm-3 btn btn-primary" id="btnCargar">Cargar</button>
                                    </div>

                                    <%--Total Deuda --%>
                                    <div class="form-group">
                                        <label for="txtdeudatotal" class="col-sm-6 control-label">Total Deuda:</label>
                                        <div class="col-sm-6">

                                            <label class="sr-only" for="exampleInputAmount">Monto (en Soles)</label>
                                            <div class="input-group">
                                                <div class="input-group-addon">S/.</div>
                                                <input type="text" class="form-control" id="txtdeudatotal" placeholder="Monto" disabled="">
                                            </div>
                                        </div>
                                    </div>
                                    <%--Listado de Toda la Deuda --%>
                                    <div id="ListaDeuda">

                                    </div>
                                    <%-- Fin Listado Toda la Deuda --%>
                                </form>
                            </div>
                    </aside>
                    <section class="posts col-md-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Datos del Ingreso</h3>
                            </div>
                            <div class="panel-body">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label for="txtConcepto" class="col-sm-5 control-label">Concepto:</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="txtConcepto" placeholder="Concepto">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtConcepto" class="col-sm-5 control-label">Monto:</label>
                                        <div class="col-sm-7">

                                            <label class="sr-only" for="exampleInputAmount">Monto (en Soles)</label>
                                            <div class="input-group">
                                                <div class="input-group-addon">S/.</div>
                                                <input type="text" class="form-control" id="txtmonto" placeholder="Monto">

                                            </div>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtConcepto" class="col-sm-5 control-label">Fecha de Ingreso:</label>
                                        <div class="col-sm-7">
                                            <div class='input-group date' id='datetimepicker1'>
                                                <input type='text' class="form-control" id="FechaIng"/>
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtReferencia" class="col-sm-5 control-label">Referencia:</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="txtReferencia" placeholder="ejm. Rec. Ingreso 0001">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="CTABanca" class="col-sm-5 control-label">Cuenta Destino:</label>
                                        <div class="col-sm-7">
                                            <select class="form-control" id="CTABanca">
                                                <option value="01">Cuenta Corriente 01</option>
                                                <option value="02">Caja Chica</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="CPresu" class="col-sm-5 control-label">Clase Presupuestal:</label>
                                        <div class="col-sm-7">
                                            <select class="form-control" id="CPresu">

                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="TipoFondo" class="col-sm-5 control-label">Tipo de Fondo:</label>
                                        <div class="col-sm-7">
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
                                <button type="button" class="btn btn-default" id="btnAsigna">Asignar Monto</button>
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
        <script type="text/javascript">
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
                $('body').on('click', '#btnCargar', function (e) {
                    $.ajax({
                        type: 'GET',
                        url: 'GenerarCuota.do',
                        dataType: 'json',
                        success: function (response) {
                            var response = response.datos;
                            var contador = 1;
                            var acumulador = 0;
                            var idvivienda = $('#ListaViviendas').val();
                            $('#lst').remove();
                            var fila = '<div id="lst">';
                            for (var x = 0; x < response.length; x++) {
                                if (response[x].IdVivienda == idvivienda) {
                                    fila += '<div class="form-group">';
                                    fila += '<label class="col-sm-5 control-label">' + response[x].Concepto + '</label>';
                                    fila += '<div class="col-sm-3">';
                                    fila += '<label class="sr-only" for="exampleInputAmount">Monto (en Soles)</label>';
                                    fila += '<div class="input-group">';
                                    fila += '<div class="input-group-addon">S/.</div>';
                                    fila += '<input type="text" class="form-control" id="' + response[x].IdCuota + '" value="' + response[x].Monto + '" disabled="">';
                                    fila += '</div>';
                                    fila += '</div>';
                                    fila += '<div class="col-sm-4">';
                                    fila += '<label class="sr-only" for="exampleInputAmount">Monto (en Soles)</label>';
                                    fila += '<div class="input-group">';
                                    fila += '<div class="input-group-addon">S/.</div>';
                                    fila += '<input type="text" class="form-control" id="M' + contador + '" placeholder="Monto" >';
                                    fila += '</div>';
                                    fila += '</div>';
                                    fila += '</div>';
                                    contador++;
                                    acumulador += response[x].Monto;
                                }

                            }
                            fila += '<div class="form-group">';
                            fila += '<label for="txtAnticipo" class="col-sm-4 control-label">Anticipo:</label>';
                            fila += '<div class="col-sm-8">';
                            fila += '<label class="sr-only" for="exampleInputAmount">Monto (en Soles)</label>';
                            fila += '<div class="input-group">';
                            fila += '<div class="input-group-addon">S/.</div>';
                            fila += '<input type="text" class="form-control" id="txtAnticipo" placeholder="Monto" >';
                            fila += '</div>';
                            fila += '</div>';
                            fila += '</div>';
                            fila += '</div>';
                            $('#ListaDeuda').append(fila);
                            $('#txtdeudatotal').val(acumulador);
                        }
                    });
                });
                $('body').on('click', '#btnAsigna', function (e) {
                    
                    $.ajax({
                        type: 'GET',
                        url: 'GenerarCuota.do',
                        dataType: 'json',
                        success: function (response) {
                            var response = response.datos;
                            
                            var idvivienda = $('#ListaViviendas').val();
                            var monto = $('#txtmonto').val();
                            for (var x = 0; x < response.length; x++) {
                                if (response[x].IdVivienda == idvivienda) {
                                    if(monto > response[x].Monto){
                                        monto = monto - response[x].Monto;
                                        var imp = x+1;
                                        var imput = "'#M"+imp+"'";
                                        alert(imput);
                                        $(imput).val(response[x].Monto);
                                    }
                                }
                            }
                        }
                    });    
                });
            });
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


    </body>
</html>
