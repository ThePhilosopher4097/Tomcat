// HTTP Servlet

import java.io.*;
import javax.servlet.*;

public class Servlet_1 implements Servlet
{
  public void init(ServletConfig cong)
  {
    System.out.println("Starting....");
  }
  
  public void service(ServletRequest req, ServletResponse res) throws IOException
  {
    System.out.println("Servicing....");
    res.setContentType("text/html");
    PrintWriter out=res.getWriter();  

    int number = Integer.parseInt(req.getParameter("n1"));
    int fact = 1;
    for(int i=2;i<=number;i++)
      fact *= i;
    out.print("<center><h1 style='top:30%;'>The Factorial of "+number+" = "+fact+"</h1></center>");
  }
  
  public void destroy() { }

  public ServletConfig getServletConfig()
  { 
    return null;
  }
  
  public String getServletInfo()
  {
    return "Servlet Demo";
  }

}