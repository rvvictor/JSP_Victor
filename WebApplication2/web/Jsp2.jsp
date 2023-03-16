<%-- 
    Document   : Jsp2
    Created on : 15 mar 2023, 19:30:00
    Author     : ruizl
--%>

<%@page import="org.victor.Datos"%>
<%@page import="org.victor.Negocio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>My Jsp2!</h1>
        <%
            Negocio negocio = new Negocio();
            int num =(int)(Math.random()*100);
            String cad = String.format("?num=%d", num);
        %>
        <a href="Jsp1.jsp<%=cad%>">Regresar a Jsp1 con dato</a>
        <br><br>
        <a href="Jsp1.jsp">Regresar a Jsp1 sin dato</a>
        <br><br><br>
        <table border = 1>
            <tr>
                <td>Nombre</td>
                <td>Calificaciones</td>
            </tr>
            <%
                if (negocio.getLista() != null && !negocio.getLista().isEmpty()) {
                    for(Datos datito : negocio.getLista()){
            %>
            <tr>
                <td><%=datito.getNombre()%></td>
                <td><%=datito.getCal()%></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </body>
</html>
