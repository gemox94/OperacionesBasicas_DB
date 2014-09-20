<%-- 
    Document   : delete
    Created on : 13/09/2014, 11:45:23 AM
    Author     : gerard
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Class3.model.Consultas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Delete information</h1>
        
        <%Consultas q = new Consultas(); %>
        <% ResultSet rs = q.getalldates();%>
        
        <form action="delete" method="post">
        
            <select name="usuarios">
                <% while(rs.next()) { %>

                <option name="usuario" id="usuario" value=<%=rs.getString("id_empleado")%>> <%= rs.getString("usuario")%> </option>

                <%}%>
            </select>
            
            <input type="submit" name="Eliminar" id="Eliminar" value="Eliminar">
        
        <form/>
        
    </body>
</html>
