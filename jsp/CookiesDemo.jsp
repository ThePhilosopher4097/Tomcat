<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
    if (request.getParameter("fromDeletePage")==null)
    {   //1. create cookies
        Cookie Name=new Cookie("Name",request.getParameter("name"));
        Cookie PRN=new Cookie("PRN",request.getParameter("prn"));
        Cookie Gender=new Cookie("Gender",request.getParameter("gender"));
        Cookie Phone=new Cookie("Phone",request.getParameter("contact"));
        Cookie Email=new Cookie("Email",request.getParameter("email"));
        Cookie Address=new Cookie("Address",request.getParameter("address"));

        //2. set age
        //cookies.setMaxAge(value);
        Name.setMaxAge(60*60*24);
        PRN.setMaxAge(60*60*24);
        Gender.setMaxAge(60*60*24);
        Email.setMaxAge(60*60*24);
        Phone.setMaxAge(60*60*24);
        Address.setMaxAge(60*60*24);

        //3. add cookies in response
        response.addCookie(Name);
        response.addCookie(PRN);
        response.addCookie(Address);
        response.addCookie(Gender);
        response.addCookie(Phone);
        response.addCookie(Email);
    }
%>

<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Cookies Demo</title>
    <style>
        table {
            /*padding: 10px;*/
            font-family: Arial, Helvetica, sans-serif;
            width:1200px;
            border: 1px solid #ddd;
        }
        th {
            padding-top: 12px;
            padding-left: 10px;
            text-align: left;
            padding-bottom: 12px;
            background-color: #5971e3;
            color: white;
        }
        td { padding: 8px; }

        tr:nth-child(even){background-color: #f2f2f2;}
        tr:hover {background-color: #ddd;}
    </style>
</head>
<body>
<h1 style="color:green">View Cookies</h1>
<center>
<table border="1">
<%
    Cookie ck = null;
    Cookie[] cookie = null;

    cookie = request.getCookies();
    out.println("Cookies are stored in the Browser for the site : <b>"+request.getRequestURI()+"<b><br><br><hr>");
    if (cookie!=null){
        out.println("<tr><th>Key</th><th>Value</th><th>Action</th></tr>");
        for (int i=0;i < cookie.length;i++){
            ck=cookie[i];
            out.println("<tr><td>"+ck.getName()+"</td>");
            out.println("<td>"+ck.getValue()+"</td>");
    %>
            <td><form method='get' action='DeleteCookies.jsp'>
                    <input type="hidden" value="<%=ck.getName() %>" name="cookie_to_be_deleted"> 
                    <input type='submit' name='submit' value='Delete Cookies'>
            </form></td></tr>
    <%
        }
    }else{

    }
%>
</table>
<br><br>
<a href="../">
    <button value="Back" name="back" id="back">Back</button>
</a>
</center>
</body>
</html>