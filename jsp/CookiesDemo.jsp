<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
    //1. create cookies
    Cookie Name=new Cookie("Name",request.getParameter("name"));
    Cookie PRN=new Cookie("PRN",request.getParameter("prn"));


    //2.set age
    //cookies.setMaxAge(value);
    Name.setMaxAge(60*60*24);
    PRN.setMaxAge(60*60*24);

    //add cookies in response

    response.addCookie(Name);
    response.addCookie(PRN);
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
<h1 style="color:green">Cookies Added Successfully!</h1>
<center>
<table border="1">
<%
    Cookie ck = null;
    Cookie[] cookie = null;

    cookie = request.getCookies();
    out.println("Cookies are stored in the Browser for the site : <b>"+request.getRequestURI()+"<b><br><br><hr>");
    if (cookie!=null){
        for (int i=0;i < cookie.length;i++){
            ck=cookie[i];
            out.println("<tr><td>Key ------>  "+ck.getName()+"</td>");
            out.println("<td>Value ------> "+ck.getValue()+"</td></tr>");
        }
    }else{

    }
%>
</table>
</center>
</body>
</html>