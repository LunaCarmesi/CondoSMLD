<%-- 
    Document   : EstCtaBanco
    Created on : 20-jun-2017, 16:38:07
    Author     : Administrador
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
        <title>Campiña II - Empleados</title>
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
                           
                            <li class="active">Caja y Bancos</li>
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
                        <th>Codigo de Cuenta</th>
                        <th>Banco</th>
                        <th>Saldo Actual</th>
                                   
                        <th data-sort-ignore="true">Acciones</th>
                        </thead>
                        <tbody>                
                        </tbody>
                        <tfoot>
                        <td colspan="7">
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
                        <h4 class="modal-title" id="myModalLabel">Agregar Banco o Caja</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                                    <div class="form-group">
                                        <label for="txtConcepto" class="col-sm-5 control-label">Codigo de Cuenta:</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="txtConcepto" placeholder="Codigo de identificacion">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtConcepto" class="col-sm-5 control-label">Nombre:</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="txtConcepto" placeholder="Nombre de la Cuenta">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtConcepto" class="col-sm-5 control-label">Nro. Cuenta:</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="txtConcepto" placeholder="Numero de cuenta">
                                        </div>
                                        
                                    </div>
                             <div class="form-group">
                                        <label for="txtConcepto" class="col-sm-5 control-label">Saldo Inicial:</label>
                                        
                                        <div class="col-sm-7">

                                            <label class="sr-only" for="exampleInputAmount">Monto (en Soles)</label>
                                            <div class="input-group">
                                                <div class="input-group-addon">S/.</div>
                                                <input type="text" class="form-control" id="txtmonto" placeholder="Monto">

                                            </div>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtConcepto" class="col-sm-5 control-label">Fecha de saldo Inicial:</label>
                                        <div class="col-sm-7">
                                            <div class='input-group date' id='datetimepicker1'>
                                                <input type='text' class="form-control" />
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                            </div>


                                        </div>
                                    </div>
                             
                                    
                                    <div class="form-group">
                                        <label for="CPresu" class="col-sm-5 control-label">Clase Presupuestal:</label>
                                        <div class="col-sm-7">
                                             <select class="form-control" id="CPresu">
                                                <option value="01">Cuotas de Mantenimiento</option>
                                                <option value="02">Consumo de Gas</option>
                                                <option value="03">Consumo de Agua</option>
                                                <option value="04">Estacionamiento</option>
                                                <option value="05">Ingreso de Terceros</option>
                                                <option value="06">Intereses Bancarios</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="TipoFondo" class="col-sm-5 control-label">Fondo Predeterminado:</label>
                                        <div class="col-sm-7">
                                            <select class="form-control" id="TipoFondo">
                                                <option value="01">Fondo Ordinario</option>
                                                <option value="02">Fondo Extraordinario</option>
                                                <option value="03">Fondo Reserva</option>
                                            </select>
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
                        <h4 class="modal-title" id="myModalLabel">Editar Empleado</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label for="IdEmpleado" class="col-sm-4 control-label">Id Empleado:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtIdEmpleadoE" disabled="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Nombre:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtNombreE">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Email" class="col-sm-4 control-label">Email:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtEmailE">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Telefono" class="col-sm-4 control-label">Telefono:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtTelefonoE">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Comentario:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtComentarioE">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Estado" class="col-sm-4 control-label">Estado:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="txtEstadoE">
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
    <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/moment-with-locales.js"></script>
        <script src="js/bootstrap-datetimepicker.min.js"></script>
        <script type="text/javascript">
            $(function () {
                $('#datetimepicker1').datetimepicker({
                    locale: 'es',
                    format: 'DD/MM/YYYY'
                });
            });
           
        </script>
    <script src="js/footable.all.min.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $('.footable').footable();

            //INSERTAR  
            $('body').on('click', '#btnSave', function (e) {
                var id = $('#txtIdEmpleado').val();
                var nom = $('#txtNombre').val();
                var email = $('#txtEmail').val();
                var telf = $('#txtTelefono').val();
                var com = $('#txtComentario').val();
                var est = $('#txtEstado').val();
                var data = {IdEmpleado: id, Nombre: nom, Email: email, Telefono: telf, Comentarios: com, Estado: est};
                $.ajax({
                    type: "POST",
                    data: JSON.stringify(data),
                    url: "mttoEmpleados.do",
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
                    var id = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddId]").val());
                    $.ajax({
                        type: "DELETE",
                        url: "mttoEmpleados.do?id=" + id,
                        dataType: "json",
                        success: function (response) {
                            alert(response.message);
                        }
                    });
                }
            });

            //Cargar datos al modal Editar 
            $('body').on('click', '#btnEdit', function (e) {
                var id = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddId]").val());
                $('#txtIdEmpleadoE').val(id);
                var nom = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddnom]").val());
                $('#txtNombreE').val(nom);
                var email = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddemail]").val());
                $('#txtEmailE').val(email);
                var telf = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddtelf]").val());
                $('#txtTelefonoE').val(telf);
                var com = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddcom]").val());
                $('#txtComentarioE').val(com);
                
                var est = $.trim($(this).closest("tr").find("input[type=hidden][id*=hddest]").val());
                var estado= "";
                if (est == "A") {
                    estado = "Activo";
                } else {
                    estado = "Inactivo";
                }
                $('#txtEstadoE').val(estado);
            });


            //Modificar Registro
            $('body').on('click', '#btnUpdate', function (e) {
                var id = $('#txtIdEmpleadoE').val();
                var nom = $('#txtNombreE').val();
                var email = $('#txtEmailE').val();
                var telf = $('#txtTelefonoE').val();
                var com = $('#txtComentarioE').val();
                var est = $('#txtEstadoE').val();
                var est1="";
                if(est == "Activo"){
                    est1 = "A";
                }else{
                    est1 = "I";
                }
                var data = {IdEmpleado: id, Nombre: nom, Email: email, Telefono: telf, Comentarios: com, Estado: est1};
                $.ajax({
                    type: "PUT",
                    data: JSON.stringify(data),
                    url: "mttoEmpleados.do",
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
                    url: "mttoEmpleados.do",
                    dataType: "json",
                    success: function (response) {
                        var response = response.datos;
                        $('.footable tbody tr').remove();
                        for (var x = 0; x < response.length; x++) {
                            console.log(response[x].IdEmpleado);
                            var estado = "";
                            if (response[x].Estado == "A") {
                                estado = "Activo";
                            } else {
                                estado = "Inactivo";
                            }
                            var fila = '<tr>';
                            fila += '<td><input type="hidden" id="hddId" value="' + response[x].IdEmpleado + '">' + response[x].IdEmpleado + '</td>';
                            fila += '<td><input type="hidden" id="hddnom" value="' + response[x].Nombre + '">' + response[x].Nombre + '</td>';
                            fila += '<td><input type="hidden" id="hddemail" value="' + response[x].Email + '">' + response[x].Email + '</td>';
                            fila += '<td><input type="hidden" id="hddtelf" value="' + response[x].Telefono + '">' + response[x].Telefono + '</td>';
                            fila += '<td><input type="hidden" id="hddcom" value="' + response[x].Comentarios + '">' + response[x].Comentarios + '</td>';
                            fila += '<td><input type="hidden" id="hddest" value="' + response[x].Estado + '">' + estado + '</td>';
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
