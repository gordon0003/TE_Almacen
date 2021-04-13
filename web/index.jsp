<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Tarea"%>
<%@page import="com.emergentes.modelo.GestorTareas"%> 
<%
    if (session.getAttribute("agenda") == null) {
        GestorTareas objeto1 = new GestorTareas();

        objeto1.insertarTarea(new Tarea(1,"Coca cola", 8.5,100));
        objeto1.insertarTarea(new Tarea(2, "Pepsi", 11, 50));
        objeto1.insertarTarea(new Tarea(3, "Frack", 6, 100));
        objeto1.insertarTarea(new Tarea(4, "Serranitas", 2.5, 80));
        
        session.setAttribute("agenda", objeto1);
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">Productos</h1> 
        <a href="Controller?op=nuevo">Nuevo Producto</a> 
        <br>
        <br>
        <table border="1" cellspacing="0"> 
            <tr> 
                <th>Id</th> 
                <th>Producto</th> 
                <th>Precio</th> 
                <th>Cantidad</th> 
                <th>Modificar</th> 
                <th>Eliminar</th>
            </tr> 
            <c:forEach var="item" items="${sessionScope.agenda.getLista()}"> 
                <tr> 
                   
                    <td style="border-top:inset 0pt">${item.id}</td> 
                    <td style="border-top:inset 0pt">${item.producto}</td> 
                    <td style="border-top:inset 0pt">${item.precio}</td> 
                    <td style="border-top:inset 0pt">${item.cantidad}</td>
                    <td style="border-top:inset 0pt"><a href="Controller?op=modificar&id=${item.id}">Modificar</a></td> 
                    <td style="border-top:inset 0pt"><a href="Controller?op=eliminar&id=${item.id}">Eliminar</a> </td> 
                </tr>   
            </c:forEach> 
        </table>
    </body>
</html>
