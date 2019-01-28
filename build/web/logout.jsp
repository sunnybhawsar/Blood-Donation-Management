<%-- 
    Document   : logout
    Created on : 31 Mar, 2018, 3:50:14 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
        HttpSession obj=request.getSession(false);
        obj.invalidate();
        out.println("<center><br><br><h3 style='color:darkgreen;'>Logout successfull!</h3></center>");
        
        HttpSession objj=request.getSession();
        objj.setAttribute("sid",888);
        
        HttpSession objjj=request.getSession();
        objjj.setAttribute("id1",888);
        out.println("<center><br><a href='index.jsp' style=''><h2>Go to Home</h2></a></center>");
        %>
    </body>
</html>

