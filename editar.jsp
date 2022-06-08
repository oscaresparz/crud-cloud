<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@include file="WEB-INF/jspf/conectar.jspf" %>

<sql:query var="rs" dataSource="${bd}">
    select * from Usuarios where co=?;
    <sql:param value="${param.co}"/>
</sql:query>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="Description" content="Enter your description here"/>
        <link rel="icon" href="img/kisspng-drawing-book-sketch-book-template-5aae4c326e0791.2819585515213722104507.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <title>Editar Datos JSP</title>
    </head>
    <body id="fondo">
        
        <style>
            #boton3, #boton4, #codigo{
                width: 400px;
            }

            #fondo{
                background-image: url(./img/smooth-purple.jpg);
            }
        </style>

        <div class="container" align="center">

            <h1 class="bg-dark mt-2 py-3 text-center" style="border:1px solid white; border-radius: 10px; color:white; ">Edición de Datos</h1>

                <form action="edit.jsp" method="POST">

                    <input type="hidden" name="co" value="${param.co}" />

                    <c:forEach var="p" items="${rs.rows}">

                        <div class="form-group">
                            <center><b><label for="co" style="color:white;">Codigo empleado:</label></b></center>
                            <center><input type="text" readonly="" class="form-control" name="co" id="codigo" value="${p.co}"></center>
                        </div>
                        
                        <div class="form-group">
                            <center><b><label for="sex" style="color:white;">Sexo:</label></b><br></center>
                            <div class="row">
                                <div class="col-3 col-md-4 col-lg-5"></div>
                                <div class="col-3 col-md-2 col-lg-1">
                                    <p style="color:white;">Masculino:</p><input type="radio" class="form-control"  name="sex" value="Masculino">
                                </div>
                                <div class="col-3 col-md-2 col-lg-1">
                                    <p style="color:white;">Femenino:</p><input type="radio" class="form-control"  name="sex" value="Femenino"><br>
                                </div>
                                <div class="col-3 col-md-4 col-lg-5"></div>
                            </div>
                            
                        </div>
                        
                        <div class="form-group">
                            <center><b><label for="serv" style="color:white;">Servicio Solicitado:</label></b></center>
                            <div class="row">
                                <div class="col-3 col-md-4 col-lg-5"></div>
                                <div class="col-3 col-md-2 col-lg-1">
                                    <p style="color:white;">Hardware:</p><input type="checkbox" class="form-control"  name="serv" value="Hardware">
                                </div>
                                <div class="col-3 col-md-2 col-lg-1">
                                    <p style="color:white;">Software:</p><input type="checkbox" class="form-control"  name="serv" value="Software"><br><br>
                                </div>
                                <div class="col-3 col-md-4 col-lg-5"></div>
                            </div>
                        </div>
                        
                        <center><b><label for="depto" style="color:white;">Departamento:</label></b><br></center>
                        <center>
                            <select name="depto">
                                <option value="Ventas">Ventas</option>
                                <option value="Publicidad">Publicidad</option>
                                <option value="Personal">Personal</option>
                            </select>
                        </center>
                        <br><br>
                        <center><b><label for="men" style="color:white;">Descripcion:</label></center></b><br>
                        <center><textarea name="men"></textarea></center><br><br>
                        <hr>
                        <center><button type="submit" class="btn btn-dark form-control" name="action" value="Editar" id="boton3"><i class="fas fa-edit"> Editar Información</i> </button></center>
                        <br>
                        <center><a href="solicitud.jsp" type="submit" class="return btn-dark form-control" name="atcion" value="Volver" id="boton4"><i class="fas fa-undo-alt"> Volver al Inicio </i></a></center>

                    </c:forEach>

                    
                </form>

        </div>

                
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
    </body>
</html>