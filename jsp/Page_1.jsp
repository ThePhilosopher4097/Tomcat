<h1>
    <%
        String User = request.getParameter("name");
        String PRN = request.getParameter("prn");
        String UpdatedURL = "";

        if (PRN.length()==10){
            session.setAttribute("LoggedUser", User);
            session.setAttribute("UserPRN", PRN);

            UpdatedURL = response.encodeURL("Page2.jsp?User="+User+"&PRN="+PRN);
        }
        else{
            session.setAttribute("VisitCount", 0);
            response.sendRedirect("/MIT/index.jsp?status=Invalid PRN&msg=Access Denied#session");
        }
    %>
    <a href="<%=UpdatedURL%>">Go to Page_2</a>
</h1>