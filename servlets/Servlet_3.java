// HTTP Servlet methods

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class Servlet_3 extends HttpServlet {

    public void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String number_1 = request.getParameter("n1");
        String number_2 = request.getParameter("n2");
        int sum = Integer.parseInt(number_1) + Integer.parseInt(number_2);

        out.println("The Addition of "+number_1+" + "+number_2+" is = "+sum);
        out.close();
    }
    public void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String number_1 = request.getParameter("n1");
        String number_2 = request.getParameter("n2");
        int sum = Integer.parseInt(number_1) + Integer.parseInt(number_2);

        out.println("The Addition of "+number_1+" + "+number_2+" is = "+sum);
        out.close();
    }
}