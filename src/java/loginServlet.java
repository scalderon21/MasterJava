import MisPaquetes.conexion;
import MisPaquetes.productos;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/loginServlet"})
public class loginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            HttpSession session = request.getSession();
        
        conexion con= new conexion();
        Connection conn=con.conectarBD("duoc");
        
        try (PrintWriter out = response.getWriter()) {
            String usuario=request.getParameter("usuario");
            String clave=request.getParameter("clave");   
            String admin = "administrador";
            String query = "select * from usuario"; 
            Statement stmt=conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            
            while (rs.next()){
                if(rs.getString("nombre").equals(usuario) && rs.getString("password").equals(clave)){
                    if(rs.getString("tipo").equals(admin)){
                        session.setAttribute("tipoUsuario", admin);
                        session.setAttribute("nombreUsuario", usuario);
                        response.sendRedirect("index.jsp");
                    }
                    session.setAttribute("nombreUsuario", usuario);
                    response.sendRedirect("index.jsp");
                }
                else {
                    response.sendRedirect("error.jsp");
                }
            }

                       
        } catch (SQLException ex) {
            Logger.getLogger(loginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
