<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@include file="WEB-INF/jspf/conectar.jspf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html">
        <title>Datos CRUD JSPF</title>
        <link rel="icon" href="img/kisspng-computer-icons-user-clip-art-user-5abf13db5624e4.1771742215224718993529.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>
        <style>
            body{
                background-image: url(./img/fondoX.png);
                background-repeat: no-repeat;
                background-size: cover;
            }

            #botonReg{
	        color:white;
	        border: 1px solid black;
	        border-radius: 20px;
            }

            a {
	        margin-bottom: 10px;
            }

            #contPrinc{
                margin-top:50px;
            }

            #logo_user{
                margin-bottom: 20px;
                background-color: white;
                border: 3px solid black;
                border-radius: 200px;
            }
        </style>

        <sql:query var="rs" dataSource="${bd}">
            select * from Usuarios
        </sql:query>

        <div class="container" align="center" id="contPrinc">
            <img src="img/kisspng-computer-icons-user-clip-art-user-5abf13db5624e4.1771742215224718993529.png" alt="logo usuario" width="250" id="logo_user">
            <table class=" table table-striped table-light" border="3">
                <thead class="table-success">
                    <tr>
                        <th>Codigo</th>
                        <th>Sexo</th>
                        <th>Servicio</th>
                        <th>Departamento</th>
                        <th>Mensaje</th>
                        <th>Configuración</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="p" items="${rs.rows}">
                        <tr>
                            <td><c:out value="${p.co}" /></td>
                            <td><c:out value="${p.sex}" /></td>
                            <td><c:out value="${p.serv}" /></td>
                            <td><c:out value="${p.depto}" /></td>
                            <td><c:out value="${p.men}" /></td>
                            <td>
                                <form method="post" action="editar.jsp?co=<c:out value="${p.co}" />">
                                    <button class="btn btn-success" type="submit">Modificar</button>
                                </form><br>
                                <form method="post" action="eliminar.jsp?action=2&co=<c:out value="${p.co}" />">
                                    <button class="btn btn-danger" type="submit">Eliminar</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>    
        </div>


        <div class="footer mt-5" align="center">
            <a href="solicitud.jsp" class="bg-success py-2 px-5" id="botonReg">Volver al Formulario</a><br><br><br>
        </div>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
    </body>
</html>