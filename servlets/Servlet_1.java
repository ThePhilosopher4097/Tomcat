// HTTP Servlet

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class Servlet_1 extends HttpServlet {

    public void service (HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        PrintWriter pw = res.getWriter();

        String message = "<html><body><center><h3 style='color:blue;margin-top:100px;'>Hola mi amigo.... ! Como Estais ! <br> Yo soy Admin ! Bienbenido !</h3></center></body></html>";
        pw.println(message);
        
        System.out.println("This is Service Method.");
        pw.close();
    }
}