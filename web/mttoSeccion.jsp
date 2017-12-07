<%-- 
    Document   : mttoSeccion
    Created on : 13/05/2017, 02:23:56 PM
    Author     : Jean Pierre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/footable.core.min.css"  type="text/css"/>
        <link rel="stylesheet" href="css/style.css">
        <title>Campiña II - Seccion</title>
    </head>
    <body>
        
        <%-- Menu --%>
        <%@include file="menu.jsp" %>
        <%--conenido--%>
        <section class="main container">
            <div class="row">
                <section class="col-lg-12">
                    <%-- Navegacion --%>
                    <div class="miga-de-pan">
                        <ol class="breadcrumb">
                            <li><a href="#">Inicio</a></li>
                            <li><a href="#">Directorio</a></li>
                            <li class="active">Directorio de Secciones</li>
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
                        <th>Descripcion</th>
                        <th data-sort-ignore="true">Acciones</th>
                        </thead>
                        <tbody>                
                        </tbody>
                        <tfoot>
                        <td colspan="3">
                            <ul class="pagination pull-right"></ul>
                        </td>
                        </tfoot>            
                    </table>
                </section>
            </div>
        </section>
                    
        <%-- Modal GUARDAR--%>            
        <div class="modal fade bs-example-modal-sm" id="ModalGuardar" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel1">
            <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Agregar nueva Seccion</h4>
                    </div>
                    <div class="modal-body">
                        <label for="idSeccion" class="control-label">Id Seccion:</label>
                        <div class="form-group">
                            <input type="text" class="form-control" id="txtIdSeccion">
                        </div>

                        <label class="control-label">Descripcion:</label>
                        <div class="form-group">
                            <input type="text" class="form-control" id="txtDescripcion">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Salir</button>
                        <button type="button" class="btn btn-primary" id="btnSave">Agregar</button>
                    </div>
                </div>
            </div>
        </div>
        
        <%-- Modal EDITAR--%>            
        <div class="modal fade bs-example-modal-sm" id="ModalEditar" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel2">
            <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Editar Seccion</h4>
                    </div>
                    <div class="modal-body">
                        <label for="idSeccion" class="control-label">Id Seccion:</label>
                        <div class="form-group">
                            <input type="text" class="form-control" id="txtIdSeccionE" disabled="">
                        </div>

                        <label class="control-label">Descripcion:</label>
                        <div class="form-group">
                            <input type="text" class="form-control" id="txtDescripcionE">
                        </div>
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

            //insertar   
            $('body').on('click', '#btnSave', function (e) {
                var id = $('#txtIdSeccion').val();
                var desc = $('#txtDescripcion').val();
                var data = {IdSeccion: id, Descripcion: desc};
                $.ajax({
                    type: "POST",
                    data: JSON.stringify(data),
                    url: "mttoSeccion.do",
                    dataType: "json",
                    success: function (response) {
                        alert(response.message);
                    }
                });
                $('.bs-example-modal-sm').modal('hide');
            });


            //Eliminar
            $('body').on('click', '#btnDelete', function (e) {
                if (confirm('Esta seguro de eliminar?')) {
                    var ids = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddId]").val());
                    $.ajax({
                        type: "DELETE",
                        url: "mttoSeccion.do?id=" + ids,
                        dataType: "json",
                        success: function (response) {
                            alert(response.message);
                        }
                    });
                }
            });
            
            //Cargar datos al modal Editar 
            $('body').on('click','#btnEdit',function(e){
                var id = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddId]").val());
                $('#txtIdSeccionE').val(id);
                var desc = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddDesc]").val());
                $('#txtDescripcionE').val(desc);
            });
            
            //Modificar Registro
            $('body').on('click','#btnUpdate',function (e){
                var id = $('#txtIdSeccionE').val();
                var desc = $('#txtDescripcionE').val();
                var data = {IdSeccion: id, Descripcion: desc};

                $.ajax({
                    type: "PUT",
                    data: JSON.stringify(data),
                    url: "mttoSeccion.do",
                    dataType: "json",

                    success: function (response) {
                        alert(response.message);
                    }
                });
                $('.bs-example-modal-sm').modal('hide');
            });
            
            //listar
            $('body').on('click', '#btnrefresh', function (e) {
                //alert('funciona'); 
                $.ajax({
                    type: "GET",
                    url: "mttoSeccion.do",
                    dataType: "json",
                    success: function (response) {
                        var response = response.datos;
                        $('.footable tbody tr').remove();
                        for (var x = 0; x < response.length; x++) {
                            console.log(response[x].IdSeccion);
                            var fila = '<tr>';
                            fila += '<td><input type="hidden" id="hddId" value="' + response[x].IdSeccion + '">' + response[x].IdSeccion + '</td>';
                            fila += '<td><input type="hidden" id="hddDesc" value="' + response[x].Descripcion + '">' + response[x].Descripcion + '</td>';
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
