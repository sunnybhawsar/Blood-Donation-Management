<%-- 
    Document   : more
    Created on : 30 Mar, 2018, 10:24:28 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link type="text/css" rel="stylesheet" href="css.css" media="screen"/>
         <title>More</title>
         <%@include file="header.jsp"%>
    </head>
    <body>
        <center>
            <%
                try{
            String rid=(String)session.getAttribute("sid");
            out.println(rid);}
                catch(Exception e){
                  out.println(e);  
                }
            
            %>
            
            
            
        </center>   
      
            <%@ include file="footer.jsp" %>
    </body>
</html>
