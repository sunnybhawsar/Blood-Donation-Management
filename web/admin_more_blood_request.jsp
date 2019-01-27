<%-- 
    Document   : more_blood_request
    Created on : 31 Mar, 2018, 3:51:20 PM
    Author     : hp
--%>
<%
            HttpSession objjj=request.getSession(false);
            String idd=objjj.getAttribute("id1").toString();
            if(idd.equals("888"))
            {
                response.sendRedirect("login_first.jsp");
            }
%>
<%
 HttpSession obj=request.getSession(false);
 String sid=obj.getAttribute("id1").toString();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*;" %>
<%@page import="java.util.*;" %>

<html>
    <head>
        <title>Blood Request</title>
        <link type="text/css" rel="stylesheet" href="css.css" media="screen" />
        <link type="text/css" rel="stylesheet" href="admin_css.css" media="screen" />
    </head>
    <body>
        <%@include file="admin_header.jsp"%>
        
        <center>
        <br>
        <h2 style="color: darkslategrey;">Blood Request</h2>
    </center>
        
        <%
          try
                 {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor","root","");
                    Statement st=con.createStatement();

                 
                    String id=request.getParameter("bid").toString();

                    String qry="select * from bloodrequest where bid='"+id+"' ;";
                    ResultSet rs=st.executeQuery(qry);

                    out.println("<center><br><br>");             
                     
                    while(rs.next())
                    {
                      out.println("<table border='0' style='font-size:16px;'>");
                      out.print("<tr><td><pre style='color:darkgreen;'>Patient Name </pre></td> <td><pre> "+rs.getString("name")+"</pre></td></tr>");
                       out.print("<tr><td><pre style='color:darkgreen;'>Blood Group </pre></td> <td><pre> "+rs.getString("bloodgrp")+"</pre></td></tr>");
                        out.print("<tr><td><pre style='color:darkgreen;'>Age </pre></td> <td><pre> "+rs.getInt("age")+"</pre></td></tr>");
                         out.print("<tr><td><pre style='color:darkgreen;'>Required before</pre></td> <td><pre> "+rs.getInt(5)+"-"+rs.getString(6)+"-"+rs.getInt(7)+"</pre></td></tr>");
                          out.print("<tr><td><pre style='color:darkgreen;'>No.of units required &nbsp;&nbsp;&nbsp;</pre></td> <td><pre> "+rs.getInt("units")+"</pre></td></tr>");
                           out.print("<tr><td><pre style='color:darkgreen;'>Hospital </pre></td> <td><pre> "+rs.getString("hospital")+"</pre></td></tr>");
                            out.print("<tr><td><pre style='color:darkgreen;'>Address </pre></td> <td><pre> "+rs.getString("address")+"</pre></td></tr>");
                             out.print("<tr><td><pre style='color:darkgreen;'>Location </pre></td> <td><pre> "+rs.getString("location")+"</pre></td></tr>");
                             out.print("<tr><td><pre style='color:darkgreen;'>Contact No. </pre></td> <td><pre> "+rs.getString("mobile")+"</pre></td></tr>");
                      
                      out.println("</table>");
                    } 
                         
                    out.println("</center>");
                    
              
                   
                 }catch(Exception sb)
                 {
                     out.println("Error : "+sb.getMessage().toString());
                 }
        %>
        
        <%@include file="footer.jsp"%>
    </body>
</html>

