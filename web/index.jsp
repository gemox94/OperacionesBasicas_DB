<%-- 
    Document   : index
    Created on : 6/09/2014, 11:36:59 AM
    Author     : gerard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <body>
            <h1>Hello World!</h1>

        <form action="Validar" method="post">
            <table action="Autenticacion" method="post">
                <tr>
                    <td><label>Usuario</label></td>
                    <td><input type="text" name="user" id="user"></td>
                </tr>
                <tr>
                    <td><label>Password</label></td>
                    <td><input type="password" name="pass" id="user"></td>
                </tr>
                <tr>
                    <td><label>Login</label></td>
                    <td><input type="submit" value="login"></td>
                </tr>
            </table>
        <form/>
    </body>
</html>
