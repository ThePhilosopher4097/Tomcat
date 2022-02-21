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
        page    language = "java"
                contentType="text/html"
                isThreadSafe = "true"
                pageEncoding="ISO-8859-1"
                autoFlush="false"
                import = "java.util.Random, java.time.format.DateTimeFormatter, java.time.LocalDateTime"
                errorPage = "Error.jsp"
                isErrorPage = "false"
                session = "true"
                info="Sameer Patil's JSP Demo"
    %>
</head>

<body>
    <%!
        int a = 3;
        int b = 3;
        Random rand = new Random();

        public int doSum(int a, int b){
            return a+b;
        }
        public double doDiv(int a, int b){
            return (double)(a/b);
        }
    %>
    <div style="top:80%">
    <center>
    <h2 style="color: red;">
        <%
            int rnum_1 = rand.nextInt(100)-1;
            int rnum_2 = rand.nextInt(100)-1;
            out.println("(Using Declaration function) Addition of "+rnum_1+" and "+rnum_2+" is -----> "+doSum(rnum_1,rnum_2));
        %>
    </h2>
    <h2 style="color: green;">
        <%="(Using Expression) Quotient of "+rnum_1+" and "+rnum_2+" is -----> "+doDiv(rnum_1,rnum_2)%>
    </h2>
    </center>
    </div>
</body>
</html>
<br><br>
<div style="margin-top: 1%;">

<%@ 
    include file="Footer.jsp"
%>
</div>