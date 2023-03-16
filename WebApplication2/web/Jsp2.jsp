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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
  <div class="container-fluid">
      <div class="navbar-brand "><h1>My Jsp2!</h1></div>
  </div>
        </nav>
        
        <div class="container-lg">
        <%
            Negocio negocio = new Negocio();
            int num =(int)(Math.random()*100);
            String cad = String.format("?num=%d", num);
        %>
        <br><br>
        <div class="card bg-light" style="width: 18rem;">
                 <div class="card-body">
                     <ul class="list-group list-group-flush">
                      <li class="list-group-item"><a href="Jsp1.jsp<%=cad%>">Regresar a Jsp1 con dato</a></li>
                      <li class="list-group-item"><a href="Jsp1.jsp">Regresar a Jsp1 sin dato</a></li>
                    </ul>
                  </div>
                </div>
                        <br><br><br>
       <table class="table table-striped table-hover table table-bordered table-primary">
           <thead>
            <tr>
                <th>Nombre</td>
                <th>Calificaciones</td>
            </tr>
           </thead>
            <%
                if (negocio.getLista() != null && !negocio.getLista().isEmpty()) {
                    for(Datos datito : negocio.getLista()){
            %>
            <tbody>
                <tr>
                    <td><%=datito.getNombre()%></td>
                    <td><%=datito.getCal()%></td>
                </tr>
            </tbody>
            <%
                    }
                }
            %>
        </table>
        </div>
    </body>
</html>
