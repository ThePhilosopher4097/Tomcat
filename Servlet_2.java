// Generic Servlet

import java.io.*;
import javax.servlet.*;
import java.io.IOException;

public class Servlet_2 extends GenericServlet {

    public void service (ServletRequest request, ServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String message = "<html><body><center><h3 style='color:blue;margin-top:100px;'>Hola mi amigo.... ! Como Estais ! <br> Yo soy Admin ! Bienbenido !</h3></center></body></html>";
        out.println(message);
        System.out.println("This is Service Method.");
        out.close();
    }
}