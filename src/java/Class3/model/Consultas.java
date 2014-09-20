/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Class3.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author gerard
 */
public class Consultas extends Conexion {
    
    String consulta = "";
    
    
    public Boolean Autenticacion(String user, String pass) throws SQLException
    {
        Boolean opt = false;
        Statement st = con.createStatement();
        consulta="Select * from Empleados";
        
        ResultSet rs = st.executeQuery(consulta);
        
        while(rs.next())
        {
            if(user.equals(rs.getString("usuario")) && pass.equals(rs.getString("password")))
            {
                opt = true;
                break;
            }
        }
        
        return opt;
    }
    
    public void Insert(String user, String pass, String id) throws SQLException
    {
        Statement st = con .createStatement();
        consulta = "Insert Into Empleados values('"+id+"','"+user+"','"+pass+"');";
        
        st.execute(consulta);
    }
    
    public ResultSet getalldates() throws SQLException
    {
        ResultSet rs = null;
        
        Statement st = con .createStatement();
        consulta = "Select * from Empleados";
        rs = st.executeQuery(consulta);
        
        return rs;
    }
    
    public void Delete(String id_empleado) throws SQLException
    {
        System.out.println(id_empleado);
        Statement st = con .createStatement();
        consulta = "Delete from Empleados where id_empleado ='"+id_empleado+"';";
        st.execute(consulta);
    }
    
    public void Actualizar(String id_empleado, String usuario, String password) throws SQLException
    {
        Statement st = con .createStatement();
        consulta = "Update Empleados Set usuario = '"+usuario+"' ,password = '"+password+"' where id_empleado = '"+id_empleado+"'";
        st.execute(consulta);
        
    }
}
