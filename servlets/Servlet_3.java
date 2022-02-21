// HTTP Servlet methods

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.time.format.DateTimeFormatter;  
import java.time.LocalDateTime;    


public class Servlet_3 extends HttpServlet {

    public void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String number_1 = request.getParameter("n1");
        String number_2 = request.getParameter("n2");
        int sum = Integer.parseInt(number_1) + Integer.parseInt(number_2);

        out.println("<center><br><h2>The Addition of "+number_1+" + "+number_2+" is = "+sum);
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
        LocalDateTime now = LocalDateTime.now();  
        out.println("<br><hr><br>Current Date and Time (India-GMT: +5:30): "+dtf.format(now)+"</h2></center>");

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