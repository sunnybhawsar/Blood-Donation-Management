<%-- 
    Document   : admin_delete_request
    Created on : 31 Mar, 2018, 3:36:07 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*;" %>

<%
          try
          {
               String qry="delete from bloodrequest where bid='"+request.getParameter("bid")+"'";
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor","root","");
               Statement st=con.createStatement();

               if(st.executeUpdate(qry)==1)
               {
                   response.sendRedirect("admin_bloodrequest.jsp");
               }
               else
               {
                   out.println("<br/><br/>Item have error to delete");
               }

           }catch(Exception sb)
           {
               out.println("<br/><br/>Error is "+sb.getMessage().toString());
           }



%>