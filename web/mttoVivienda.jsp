<%-- 
    Document   : mttoVivienda
    Created on : 14/05/2017, 04:53:38 PM
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
        <title>Campiña II - Viviendas</title>
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
                            <li class="active">Directorio de Viviendas</li>
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
                        <th>Nro Vivienda</th>
                        <th>Telefono</th>
                        <th>Estado</th>
                        <th>Participacion</th>
                        <th>Area Ocupada</th>
                        <th>Area Techchada</th>
                        <th>Comentario</th>
                        <th>Id Seccion</th>
                        <th data-sort-ignore="true">Acciones</th>
                        </thead>
                        <tbody>                
                        </tbody>
                        <tfoot>
                        <td colspan="10">
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
                        <h4 class="modal-title" id="myModalLabel">Agregar Vivienda</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label for="IdVivienda" class="col-sm-4 control-label">Id Vivienda:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtIdVivienda">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">NroVivienda:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtNroVivienda">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Telefono" class="col-sm-4 control-label">Telefono:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtTelefono">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Estado" class="col-sm-4 control-label">Estado:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtEstado">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">PorceParti:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtPorceParti">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="AreaOcu" class="col-sm-4 control-label">AreaOcu:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtAreaOcu">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">AreaTech:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtAreaTech">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Comentario" class="col-sm-4 control-label">Comentario:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtComentario">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">IdSeccion:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtIdSeccion">
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
                        <h4 class="modal-title" id="myModalLabel">Editar Vivienda</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label for="IdVivienda" class="col-sm-4 control-label">Id Vivienda:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtIdViviendaE" disabled="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">NroVivienda:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtNroViviendaE">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Telefono" class="col-sm-4 control-label">Telefono:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtTelefonoE">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Estado" class="col-sm-4 control-label">Estado:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtEstadoE">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">PorceParti:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtPorcePartiE">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="AreaOcu" class="col-sm-4 control-label">AreaOcu:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtAreaOcuE">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">AreaTech:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtAreaTechE">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Comentario" class="col-sm-4 control-label">Comentario:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtComentarioE">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">IdSeccion:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtIdSeccionE">
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
                var id = $('#txtIdVivienda').val();
                var nrov = $('#txtNroVivienda').val();
                var telf = $('#txtTelefono').val();
                var esta = $('#txtEstado').val();
                var porce = $('#txtPorceParti').val();
                var areao = $('#txtAreaOcu').val();
                var areat = $('#txtAreaTech').val();
                var come = $('#txtComentario').val();
                var idsec = $('#txtIdSeccion').val();
                var data = {IdVivienda: id, NroVivienda: nrov, Telefono: telf, Estado: esta, PorceParti: porce, AreaOcu: areao, AreaTech: areat, Comentario: come, IdSeccion: idsec};
                $.ajax({
                    type: "POST",
                    data: JSON.stringify(data),
                    url: "mttoVivienda.do",
                    dataType: "json",
                    success: function (response) {
                        alert(response.message);
                    }
                });
                $('#ModalGuardar').modal('hide');
            });

            //ELIMINAR
            $('body').on('click', '#btnDelete', function (e) {
                if (confirm('Esta seguro de eliminar?')) {
                    var id = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddId]").val());
                    $.ajax({
                        type: "DELETE",
                        url: "mttoVivienda.do?id=" + id,
                        dataType: "json",
                        success: function (response) {
                            alert(response.message);
                        }
                    });
                }
            });


            //CARGAR DATOS AL MODAL EDITAR 
            $('body').on('click', '#btnEdit', function (e) {
                var id = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddid]").val());
                $('#txtIdViviendaE').val(id);
                var nrov = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddnrov]").val());
                $('#txtNroViviendaE').val(nrov);
                var telf = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddtelf]").val());
                $('#txtTelefonoE').val(telf);          
                var esta = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddesta]").val());               
                $('#txtEstadoE').val(esta);             
                var porce = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddporce]").val());
                $('#txtPorcePartiE').val(porce);
                var areao = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddareao]").val());
                $('#txtAreaOcuE').val(areao);
                var areat = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddareat]").val());
                $('#txtAreaTechE').val(areat);
                var come = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddcome]").val());
                $('#txtComentarioE').val(come);
                var idsec = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddidsec]").val());
                $('#txtIdSeccionE').val(idsec);
            });



            //MODIFICAR REGISTRO
            $('body').on('click', '#btnUpdate', function (e) {
                var id = $('#txtIdViviendaE').val();
                var nrov = $('#txtNroViviendaE').val();
                var telf = $('#txtTelefonoE').val();
                var esta = $('#txtEstadoE').val();         
                var porce = $('#txtPorcePartiE').val();
                var areao = $('#txtAreaOcuE').val();
                var areat = $('#txtAreaTechE').val();
                var come = $('#txtComentarioE').val();
                var idsec = $('#txtIdSeccionE').val();
                var data = {IdVivienda: id, NroVivienda: nrov, Telefono: telf, Estado: esta, PorceParti: porce, AreaOcu: areao, AreaTech: areat, Comentario: come, IdSeccion: idsec};
                $.ajax({
                    type: "PUT",
                    data: JSON.stringify(data),
                    url: "mttoVivienda.do",
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
                    url: "mttoVivienda.do",
                    dataType: "json",
                    success: function (response) {
                        var response = response.datos;
                        $('.footable tbody tr').remove();
                        for (var x = 0; x < response.length; x++) {
                            console.log(response[x].IdVivienda);                     
                            var fila = '<tr>';
                            fila += '<td><input type="hidden" id="hddId" value="' + response[x].IdVivienda + '">' + response[x].IdVivienda + '</td>';
                            fila += '<td><input type="hidden" id="hddnrov" value="' + response[x].NroVivienda + '">' + response[x].NroVivienda + '</td>';
                            fila += '<td><input type="hidden" id="hddtelf" value="' + response[x].Telefono + '">' + response[x].Telefono + '</td>';
                            fila += '<td><input type="hidden" id="hddesta" value="' + response[x].Estado + '">' + response[x].Estado + '</td>';
                            fila += '<td><input type="hidden" id="hddporce" value="' + response[x].PorceParti + '">' + response[x].PorceParti + '</td>';
                            fila += '<td><input type="hidden" id="hddareao" value="' + response[x].AreaOcu + '">' + response[x].AreaOcu + '</td>';
                            fila += '<td><input type="hidden" id="hddareat" value="' + response[x].AreaTech + '">' + response[x].AreaTech + '</td>';
                            fila += '<td><input type="hidden" id="hddcome" value="' + response[x].Comentario + '">' + response[x].Comentario + '</td>';
                            fila += '<td><input type="hidden" id="hddidsec" value="' + response[x].IdSeccion + '">' + response[x].IdSeccion + '</td>';
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
