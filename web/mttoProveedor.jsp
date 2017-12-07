<%-- 
    Document   : mttoProveedor
    Created on : 14/05/2017, 06:05:04 PM
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
        <title>Campiña II - Proveedores</title>
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
                            <li class="active">Directorio de Proveedores</li>
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
                        <th>Nombre</th>
                        <th>Direccion</th>
                        <th>Telefono</th>
                        <th>Email</th>          
                        <th>Pagina Web</th>    
                        <th data-sort-ignore="true">Acciones</th>
                        </thead>
                        <tbody>                
                        </tbody>
                        <tfoot>
                        <td colspan="8">
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
                        <h4 class="modal-title" id="myModalLabel">Agregar Proveedor</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label for="IdProveedor" class="col-sm-4 control-label">Id Proveedor:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtIdProveedor">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Descripcion:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtDescripcion">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Nombre" class="col-sm-4 control-label">Nombre:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtNombre">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Direccion" class="col-sm-4 control-label">Direccion:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtDireccion">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Telefono:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtTelefono">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Email" class="col-sm-4 control-label">Email:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtEmail">
                                </div>
                            </div>
                             <div class="form-group">
                                <label class="col-sm-4 control-label">PaginaWeb:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtPaginaWeb">
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
                        <h4 class="modal-title" id="myModalLabel">Agregar Proveedor</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label for="IdProveedor" class="col-sm-4 control-label">Id Proveedor:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtIdProveedorE">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Descripcion:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtDescripcionE">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Nombre" class="col-sm-4 control-label">Nombre:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtNombreE">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Direccion" class="col-sm-4 control-label">Direccion:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtDireccionE">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Telefono:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtTelefonoE">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Email" class="col-sm-4 control-label">Email:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtEmailE">
                                </div>
                            </div>
                             <div class="form-group">
                                <label class="col-sm-4 control-label">PaginaWeb:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtPaginaWebE">
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
                var id = $('#txtIdProveedor').val();
                var desc = $('#txtDescripcion').val();
                var nom = $('#txtNombre').val();
                var direc = $('#txtDireccion').val();
                var tele = $('#txtTelefono').val();
                var email = $('#txtEmail').val();
                var pagi = $('#txtPaginaWeb').val();
                var data = {IdProveedor: id, Descripcion: desc, Nombre: nom, Direccion: direc, Telefono: tele, Email: email, PaginaWeb: pagi};
                $.ajax({
                    type: "POST",
                    data: JSON.stringify(data),
                    url: "mttoProveedor.do",
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
                        url: "mttoProveedor.do?id=" + id,
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
                $('#txtIdProveedorE').val(id);
                var desc = $.trim($(this).closest("tr").find("input[type=hidden][id*=hdddesc]").val());
                $('#txtDescripcionE').val(desc);
                var nom = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddnom]").val());
                $('#txtNombreE').val(nom);
                var direc = $.trim($(this).closest("tr").find("input[type=hidden][id*=hdddirec]").val());
                $('#txtDireccionE').val(direc);                         
                var tele = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddtele]").val());       
                $('#txtTelefonoE').val(tele);
                var email = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddemail]").val());
                $('#txtEmailE').val(email);  
                var pagi = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddpagi]").val());
                $('#txtPaginaWebE').val(pagi);  
            });


            //Modificar Registro
            $('body').on('click', '#btnUpdate', function (e) {
                var id = $('#txtIdProveedorE').val();
                var desc = $('#txtDescripcionE').val();
                var nom = $('#txtNombreE').val();
                var direc = $('#txtDireccionE').val();
                var tele = $('#txtTelefonoE').val();
                var email = $('#txtEmailE').val();
                var pagi = $('#txtPaginaWebE').val();
                var data = {IdProveedor: id, Descripcion: desc, Nombre: nom, Direccion: direc, Telefono: tele, Email: email, PaginaWeb: pagi};
                $.ajax({
                    type: "PUT",
                    data: JSON.stringify(data),
                    url: "mttoProveedor.do",
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
                    url: "mttoProveedor.do",
                    dataType: "json",
                    success: function (response) {
                        var response = response.datos;
                        $('.footable tbody tr').remove();
                        for (var x = 0; x < response.length; x++) {
                            console.log(response[x].IdProveedor);
                            var fila = '<tr>';
                            fila += '<td><input type="hidden" id="hddid" value="' + response[x].IdProveedor + '">' + response[x].IdProveedor + '</td>';
                            fila += '<td><input type="hidden" id="hdddesc" value="' + response[x].Descripcion + '">' + response[x].Descripcion + '</td>';
                            fila += '<td><input type="hidden" id="hddnom" value="' + response[x].Nombre + '">' + response[x].Nombre + '</td>';
                            fila += '<td><input type="hidden" id="hdddirec" value="' + response[x].Direccion + '">' + response[x].Direccion + '</td>';
                            fila += '<td><input type="hidden" id="hddtele" value="' + response[x].Telefono + '">' + response[x].Telefono + '</td>';
                            fila += '<td><input type="hidden" id="hddemail" value="' + response[x].Email + '">' + response[x].Email + '</td>';
                            fila += '<td><input type="hidden" id="hddpagi" value="' + response[x].PaginaWeb + '">' + response[x].PaginaWeb + '</td>';
                            
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
