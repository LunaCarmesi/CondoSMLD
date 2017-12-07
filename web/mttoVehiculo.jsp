<%-- 
    Document   : mttoVehiculo
    Created on : 14/05/2017, 06:35:24 PM
    Author     : Jean Pierre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link href="css/footable.core.min.css" rel="stylesheet" type="text/css"/>

        <link rel="stylesheet" href="css/style.css">
        <title>Campiña II - Vehiculos</title>
    </head>
    <body>
        <%-- Menu --%>
        <%@include file="menu.jsp" %>
        <section class="main container">
            <div class="row">
                <section class="col-lg-12">
                    <%-- Navegacion --%>
                    <div class="miga-de-pan">
                        <ol class="breadcrumb">
                            <li><a href="#">Inicio</a></li>
                            <li><a href="#">Directorio</a></li>
                            <li class="active">Directorio de Vehiculos</li>
                        </ol>
                    </div>


                    <%-- Botones --%>
                    <div class="form-group">
                        <div class="btn-group col-sm-6" role="group" aria-label="...">
                            <button type="button" class="btn btn-sucess" id="btnrefresh">
                                <span class="glyphicon glyphicon-refresh"></span>
                                Actualizar
                            </button>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalGuardar">
                                <span class="glyphicon glyphicon-plus-sign"></span>
                                Nuevo</button>
                        </div>
                        <%-- Filrado --%>
                        <div class="col-sm-offset-3 col-sm-3">

                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Buscar" id="txtfiltro">
                            </div> 

                        </div>
                    </div>


                    <%-- Tabla --%>
                    <table id="tblemployees" data-filter="#txtfiltro" data-page-size="15" class="footable table  table-bordered table-hover table-responsive ">
                        <thead>
                        <th>Id</th>
                        <th>Nro Estacionamiento</th>
                        <th>Placa</th>
                        <th>Descripcion</th>
                        <th>Id Vivienda</th>    
                        <th data-sort-ignore="true">Acciones</th>
                        </thead>
                        <tbody>                
                        </tbody>
                        <tfoot>
                        <td colspan="6">
                            <ul class="pagination pull-right"></ul>
                        </td>
                        </tfoot>            
                    </table>
                </section>
            </div>
        </section>


        <%-- Modal GUARDAR --%>            
        <div class="modal fade" id="ModalGuardar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Agregar Vehiculos</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label for="IdVehiculo" class="col-sm-4 control-label">Id Vehiculo:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtIdVehiculo">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">NroEstacio:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtNroEstacio">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Placa" class="col-sm-4 control-label">Placa:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtPlaca">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Descripcion" class="col-sm-4 control-label">Descripcion:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtDescripcion">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Id Vivienda:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtIdVivienda">
                                </div>
                            </div>         
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Salir</button>
                        <button type="button" class="btn btn-primary" id="btnSave">Agregar</button>
                    </div>
                </div>
            </div>
        </div>    

        <%-- Modal EDITAR--%>            
        <div class="modal fade" id="ModalEditar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Editar Vehiculos</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label for="IdVehiculo" class="col-sm-4 control-label">Id Vehiculo:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtIdVehiculoE" disabled="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">NroEstacio:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtNroEstacioE">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Placa" class="col-sm-4 control-label">Placa:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtPlacaE">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Descripcion" class="col-sm-4 control-label">Descripcion:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtDescripcionE">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Id Vivienda:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtIdViviendaE">
                                </div>
                            </div>         
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Salir</button>
                        <button type="button" class="btn btn-primary" id="btnUpdate">Guardar</button>
                    </div>
                </div>
            </div>
        </div>   
        <%-- Footer --%>
        <%@include file="footer.jsp" %>
    </body>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/footable.all.min.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $('.footable').footable();

            //INSERTAR  
            $('body').on('click', '#btnSave', function (e) {
                var id = $('#txtIdVehiculo').val();
                var nroe = $('#txtNroEstacio').val();
                var placa = $('#txtPlaca').val();
                var desc = $('#txtDescripcion').val();       
                var idvi = $('#txtIdVivienda').val();
                var data = {IdVehiculo: id, NroEstacio: nroe, Placa: placa, Descripcion: desc, IdVivienda: idvi};
                $.ajax({
                    type: "POST",
                    data: JSON.stringify(data),
                    url: "mttoVehiculo.do",
                    dataType: "json",
                    success: function (response) {
                        alert(response.message);
                    }
                });
                $('#ModalGuardar').modal('hide');
            });

             //Eliminar
            $('body').on('click', '#btnDelete', function (e) {
                if (confirm('Esta seguro de eliminar?')) {
                    var id = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddid]").val());
                    $.ajax({
                        type: "DELETE",
                        url: "mttoVehiculo.do?id=" + id,
                        dataType: "json",
                        success: function (response) {
                            alert(response.message);
                        }
                    });
                }
            });

            //Cargar datos al modal Editar 
            $('body').on('click', '#btnEdit', function (e) {
                var id = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddid]").val());
                $('#txtIdVehiculoE').val(id);
                var nroe = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddnroe]").val());
                $('#txtNroEstacioE').val(nroe);
                var placa = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddplaca]").val());
                $('#txtPlacaE').val(placa);
                var desc = $.trim($(this).closest("tr").find("input[type=hidden][id*=hdddesc]").val());
                $('#txtDescripcionE').val(desc);                         
                var idvi = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddidvi]").val());
                $('#txtIdViviendaE').val(idvi);  
            });


            //Modificar Registro
            $('body').on('click', '#btnUpdate', function (e) {
                var id = $('#txtIdVehiculoE').val();
                var nroe = $('#txtNroEstacioE').val();
                var placa = $('#txtPlacaE').val();
                var desc = $('#txtDescripcionE').val();                             
                var idvi = $('#txtIdViviendaE').val();
                var data = {IdVehiculo: id, NroEstacio: nroe, Placa: placa, Descripcion: desc, IdVivienda: idvi};
                $.ajax({
                    type: "PUT",
                    data: JSON.stringify(data),
                    url: "mttoVehiculo.do",
                    dataType: "json",
                    success: function (response) {
                        alert(response.message);
                    }
                });
                $('#ModalEditar').modal('hide');
            });
            
            
            //LISTAR
            $('body').on('click', '#btnrefresh', function (e) {
                //alert('funciona'); 
                $.ajax({
                    type: "GET",
                    url: "mttoVehiculo.do",
                    dataType: "json",
                    success: function (response) {
                        var response = response.datos;
                        $('.footable tbody tr').remove();
                        for (var x = 0; x < response.length; x++) {
                            console.log(response[x].IdVehiculo);
                            var fila = '<tr>';
                            fila += '<td><input type="hidden" id="hddid" value="' + response[x].IdVehiculo + '">' + response[x].IdVehiculo + '</td>';
                            fila += '<td><input type="hidden" id="hddnroe" value="' + response[x].NroEstacio + '">' + response[x].NroEstacio + '</td>';
                            fila += '<td><input type="hidden" id="hddplaca" value="' + response[x].Placa + '">' + response[x].Placa + '</td>';
                            fila += '<td><input type="hidden" id="hdddesc" value="' + response[x].Descripcion + '">' + response[x].Descripcion + '</td>';
                            fila += '<td><input type="hidden" id="hddidvi" value="' + response[x].IdVivienda + '">' + response[x].IdVivienda + '</td>';
                            fila += '<td>';

                            //----ACCIONES
                            //Editar
                            fila += '<button type="button" class="btn btn-info btn-xs" id="btnEdit" data-toggle="modal" data-target="#ModalEditar">';
                            fila += '<span class="glyphicon glyphicon-edit"></span>';
                            fila += 'Edit</button>';
                            //Eliminar
                            fila += '<button type="button" class="btn btn-danger btn-xs" id="btnDelete">';
                            fila += '<span class="glyphicon glyphicon-trash"></span>';
                            fila += 'Eliminar</button>';

                            fila += '</td>';
                            fila += '</tr>';
                            $('.footable tbody').append(fila);
                        }
                        $('.footable').trigger('footable_redraw');
                        $('.footable').trigger('footable_resize');
                    }
                });
            });

        });
    </script>
</html>
