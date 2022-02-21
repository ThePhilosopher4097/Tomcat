// Generic Servlet

import java.io.*;
import javax.servlet.*;
import java.io.IOException;

public class Servlet_2 extends GenericServlet {

    public void service (ServletRequest request, ServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        int n = Integer.parseInt(request.getParameter("n1"));
        int r = Integer.parseInt(request.getParameter("n2"));

        out.print("<center><h1 style='top:30%;'>nCr ("+n+","+r+") = "+nCr(n, r)+"</h1></center>");
        out.print("<center><h1 style='top:40%;'>nPr ("+n+","+r+") = "+nPr(n, r)+"</h1></center>");
        System.out.println("This is Service Method.");
        out.close();
    }

    static int nCr(int n, int r)
    {
        return fact(n) / (fact(r) *
                    fact(n - r));
    }
    static int nPr(int n, int r)
    {
        return fact(n) / fact(n - r);
    }
    // Returns factorial of n
    static int fact(int n)
    {
        int res = 1;
        for (int i = 2; i <= n; i++)
            res = res * i;
        return res;
    }
}