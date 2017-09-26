/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MisPaquetes;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class conexion {
    public Connection conectarBD(String miBD) {
        String dbDriver = "com.mysql.jdbc.Driver";
        String dbUri = "jdbc:mysql://localhost/"+miBD;
        String dbUser = "root";
        String dbPass = "avaras08";
        Connection conn=null;
        try {
            try {
                Class.forName(dbDriver);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
            }
            conn = DriverManager.getConnection(dbUri,dbUser, dbPass);
        } catch (SQLException ex) {
            Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }
}

