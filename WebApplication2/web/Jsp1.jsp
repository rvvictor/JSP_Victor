<%-- 
    Document   : Jsp1
    Created on : 15 mar 2023, 18:08:57
    Author     : ruizl
--%>

<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="bg-success">
        
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
      <div class="navbar-brand text-center"> <h1>Numeritos</h1></div>
  </div>
        </nav>
   
     
                <div class="container-lg">
                    <div class figure-center>
                         <div class="container">
  <div class="row align-items-center">
    <div class="col-6 align-items-center">
                <h1><% String num = request.getParameter("num");%></h1>
                
                <div class="card text-center bg-light" style="width: 18rem; ">
                    <div class="card-header">
                      <%=num%>
                    </div>
                </div>
                
                <%
                    int numero=0;
                    if (num != null && !num.isEmpty()) {
                            numero=Integer.parseInt(num);
                        }
                %>
                <%
                    if (num != null && !num.isEmpty()) {
                    List<Integer> numAle=new ArrayList<>();
                    for (int i = 0; i < numero; i++) {
                            int numerosAle=(int)(Math.random() * 100);
                            numAle.add(numerosAle);
                %>
                <div class="card bg-dark" style="width: 18rem;">
                    <ul class="list-group list-group-flush">
                      <li class="list-group-item">El numero es: <%=numerosAle%> </li>
                    </ul>
                </div>
                <%
                    }
                    Collections.sort(numAle);
                %>
                </div>
                
                <div class="col-6 align-items-center">
                    <br><br><br>
                <div class="card text-center bg-light text-dark" style="width: 18rem;">
                    <div class="card-header">
                      Los numero ordenados son:
                    </div>
                </div>
                
                <%
                    for(int numeAle : numAle){ %>
                    <div class="card bg-dark" style="width: 18rem;">
                    <ul class="list-group list-group-flush">
                      <li class="list-group-item"><%out.print(numeAle);%></li>
                    </ul>
                </div>
                <%
                    }
                    }
                    
                %>
                    
                
                <div class="card bg-light" style="width: 18rem;">
                 <div class="card-body">
                        <a href="Jsp2.jsp" class="card-link">Ir a Jsp2</a>
                  </div>
                </div>
                </div>
                </div>
  </div>
</div>
                
                
                
    </body>
</html>
