<%-- 
    Document   : admin_delete_msg
    Created on : 1 Apr, 2018, 5:39:36 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*;" %>

<%
          try
          {
               String qry="delete from feedback where fid='"+request.getParameter("fid")+"'";
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor","root","");
               Statement st=con.createStatement();

               if(st.executeUpdate(qry)==1)
               {
                   response.sendRedirect("admin_messages.jsp");
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