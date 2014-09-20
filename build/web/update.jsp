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
        <script type="text/javascript">
            
$(document).ready(function(){
    $('#temp').select(function(event ){
        
        var id = $('#usuario').val();
        console.write("sss "+id);
        $.post('formularioUpdate',{
            id : id
        }, function(responseText){
            $('#table').html(responseText);
        })
        
    })
    
    
});

            
        </script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Update information</h1>
        
        <%Consultas q = new Consultas(); %>
        <% ResultSet rs = q.getalldates();%>
        
        <form action="FormularioUpdate" method="post">
        
            <select name="us" id="usuarios">
            
                <% while(rs.next()) { %>

                <option name="usuario" id="usuario" onclick="automatic()" value=<%=rs.getString("id_empleado")%>> <%= rs.getString("usuario")%> </option>

                <%}%>
            </select>
            
            
        
        <form/>
        <input type="button" name="temp" id="temp" value="temp" />
        <div id="table"></div>
        
    </body>
</html>

