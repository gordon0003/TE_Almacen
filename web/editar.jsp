

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> 
            <c:if test="${requestScope.op == 'nuevo'}" var="res" scope="request"> 
                
            </c:if> 
            <c:if test="${requestScope.op == 'modificar'}" var="res" scope="request"> 
            Nuevo 
            </c:if> 
            
        </h1>
        <jsp:useBean id="miTarea" scope="request" class="com.emergentes.modelo.Tarea" /> 
        <form action="Controller" method="post"> 
            <table> 
                <tr> 
                    <td>Id</td> 
                    <td><input type="text" name="id" 
                               value="<jsp:getProperty name="miTarea" property="id" />">
                    </td> 
                </tr> 
                <tr> 
                    <td>Producto</td> 
                    <td><input type="text" name="producto" 
                               value="<jsp:getProperty name="miTarea" property="producto" />" /> 
                    </td>
                </tr> 
                
                <tr> 
                    <td>Precio</td> 
                    <td><input type="text" name="precio" 
                               value="<jsp:getProperty name="miTarea" property="precio" />" /> 
                    </td>
                </tr>
                
                <tr> 
                    <td>Cantidad</td> 
                    <td><input type="text" name="cantidad" 
                               value="<jsp:getProperty name="miTarea" property="cantidad" />" /> 
                    </td>
                </tr>

                <tr> 
                    <td> 
                        <input type="hidden" name="opg" value="${requestScope.op}" />
                        <input type="hidden" name="op" value="grabar"/>
                    </td> 
                    <td><input type="submit" value="Enviar" /></td>
                </tr> 
            </table> 
        </form>
    </body>
</html>
