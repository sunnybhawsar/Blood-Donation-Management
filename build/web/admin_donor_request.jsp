<%-- 
    Document   : admin_donor_request
    Created on : 31 Mar, 2018, 3:38:37 PM
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
<html>
    <head>
        <title>Admin | Donor Request</title>
        <link type="text/css" rel="stylesheet" href="css.css" media="screen" />
        <link type="text/css" rel="stylesheet" href="admin_css.css" media="screen" />
        <%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<style>  
         table, th , td {  
            border: 1px solid grey;  
            border-collapse: collapse;  
            padding: 5px;  
         }  
           
         table tr:nth-child(odd) {  
            background-color: #f2f2f2;  
         }  
           
         table tr:nth-child(even) {  
            background-color: #ffffff;  
         }  
      </style>  
    </head>
    <body>
        <%@include file="admin_header.jsp"%>
    <center>
        <br>
        <h2 style="color: darkslategrey;">Donor Requests</h2>
         <br> <br>
        <%
          try
                 {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor","root","");
                    Statement st=con.createStatement();

                    String qry="select * from toapprove order by tid desc;";
                    ResultSet rs=st.executeQuery(qry);

                              
                    int sno=0;
                    out.println("<table border='1' style='width:80%;font-size:18px;border:solid 4px aliceblue;'>");
                    out.println("<tr align=left style='background-color:lightgray;'><th>S.No.</th> <th>Name</th> <th>Blood Group</th> <th>Location</th> <th>Approval</th> <th>View Profile</th></tr>");
                    while(rs.next())
                    {
                        sno++;
                        out.println("<tr>");
                      
                      out.println("<td>"+sno+".</td>");
                      out.println("<td>"+rs.getString("name")+"</td>");
                      out.println("<td>"+rs.getString("bloodgrp")+"</td>");
                      out.println("<td>"+rs.getString("location")+"</td>");
                      out.println("<td>"+rs.getString("approval")+"</td>");
                      out.println("<td><a href='admin_toapprove_profile.jsp?tid="+rs.getInt("tid")+"'>View</a></td>");
                      out.println("</tr>");
                    } 
                     out.println("</table>");
                         
                   
                    
              
               
                 }catch(Exception sb)
                 {
                     out.println("Error : "+sb.getMessage().toString());
                 }
        %>

    </center>
        <%@include file="footer.jsp"%>
    </body>
</html>