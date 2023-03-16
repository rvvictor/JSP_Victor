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
    <body>
        <div class="container-lg"><h1><center>Hello World!</center></h1>
                <h1><% String num = request.getParameter("num");%></h1>
                <div class="container-lg">
                
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
                <h1>El numero es: <%=numerosAle%></h1>
                <%
                    }
                    Collections.sort(numAle);
                %>
                <h2>Los numero ordenados son:</h2>
                <ul>
                <%
                    for(int numeAle : numAle){ %>
                    <li><h2><%out.print(numeAle);%></h2></li>
                <%
                    }
                    }
                    else{
                %>
                    <h1>Sin dato</h1>
                <%
                    }
                %>
                </div>
                <a href="Jsp2.jsp">Ir a Jsp2</a>
                
      </div>
       
    </body>
</html>
