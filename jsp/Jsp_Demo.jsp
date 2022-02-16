<%@ 
    include file="Header.jsp"
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <%@
        page    import="java.util.Random"
                errorPage="Error.jsp"
                isErrorPage="false"
    %>
</head>

<body>
    <%!
        int a = 3;
        int b = 3;
        public int doSum(){
            return a+b;
        }
        public int doDiv(){
            return a/b;
        }
    %>
    <h2 style="color: red;">
        <%
            out.println("(Using Declaration function) Addition of "+a+" and "+b+" is -----> "+doSum());
        %>
    </h2>
    <h2 style="color: green;">
        <%="(Using Expression) Additions of "+a+" and "+b+" is -----> "+doSum()%>
        <%="(Using Expression) Additions of "+a+" and "+b+" is -----> "+doDiv()%>
    </h2>
    <h2>
        <%
            Random rand = new Random();
            int rnum = rand.nextInt(10);
            out.println("The Random Number = "+rnum);
        %>
    </h2>
</body>
</html>
<br><br>
<div style="margin-top: 10%;">
<%@ 
    include file="Footer.jsp"
%>
</div>