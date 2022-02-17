<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="color:Blue">Cookies Deleted...</h1>
<%

Cookie ck=new Cookie(request.getParameter("cookie_to_be_deleted"), request.getParameter("cookie_to_be_deleted"));

if(ck!=null)
{
    ck.setMaxAge(0);
    response.addCookie(ck);
}
else
{
  out.println("Cookies are not available...");
}
%>
<form action="CookiesDemo.jsp" method="get">
    <input type="hidden" name="fromDeletePage" value="True">
<input type="submit" value="Return to View Cookies">

</form>
</body>
</html>