<center>
    <div style="background-color:darkkhaki; padding:20px 20px 20px 20px;font-size:x-large;">
        Thank you!
        <%
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
            LocalDateTime now = LocalDateTime.now();  
            out.println("<br><bR>Current Date and Time (India-GMT: +5:30): "+dtf.format(now));
        %>
    </div>
</center>>