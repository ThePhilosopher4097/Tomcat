<%@
    page import="java.util.Date"
%>
<center>
    <br>
    <h1 style="color:green">Welcome <%=session.getAttribute("LoggedUser")%></h1>
    <br>
    <hr>
    <br>
    <h2 style="color: blue">Your PRN: <%=session.getAttribute("UserPRN")%></h2>
    <br>
    <hr>
    <h2>Session Tracking Information</h2>
    <h3>
        <%
            Date CreationTime = new Date(session.getCreationTime());
            Date LastAccessTime = new Date(session.getLastAccessedTime());

            String UsernameAttribute = new String("UserID");
            String UserID = new String("Sameer");

            String CountAttribute = new String("VisitCount");
            String title = "Welcome";
            int vscount = new Integer(0);

            if (session.isNew()){
                title = "Welcome to MITAOE";
                session.setAttribute(UsernameAttribute, UserID);
                session.setAttribute(CountAttribute, vscount);
            }
            else {
                title = "Hi student.... how are you ?";
                vscount = (Integer)session.getAttribute(CountAttribute);
                vscount = vscount+1;
                session.setAttribute(UsernameAttribute, UserID);
                session.setAttribute(CountAttribute, vscount);
            }
        %>
        <table>
            <tr>
                <td>Session ID : </td>
                <td><%=session.getId()%></td>
            </tr>
            <tr>
                <td>Title : </td>
                <td><%=title%></td>
            </tr>
            <tr>
                <td>Creation Time : </td>
                <td><%=CreationTime%></td>
            </tr>
            <tr>
                <td>Last Access Time : </td>
                <td><%=LastAccessTime%></td>
            </tr>
            <tr>
                <td>Visit Count : </td>
                <td><%=vscount%></td>
            </tr>
            <tr>
                <td>UserID : </td>
                <td><%=UserID%></td>
            </tr>
        </table>
    </h3>
</center>