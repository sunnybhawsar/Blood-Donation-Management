<%-- 
    Document   : admin_bloodrequest
    Created on : 31 Mar, 2018, 3:33:14 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*;" %>
<%@page import="java.util.*;" %>

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


<html>
    <head>
        <title>Admin | Blood Request</title>
        <link type="text/css" rel="stylesheet" href="css.css" media="screen" />
        <link type="text/css" rel="stylesheet" href="admin_css.css" media="screen" />
    </head>
    <body>
        <%@include file="admin_header.jsp"%>
    <center>
        <br>
        <h2 style="color: darkslategrey;">Blood Requests</h2>
        
    </center>
        <br><br>
    
         <%
          try
                 {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor","root","");
                    Statement st=con.createStatement();

                    String qry="select * from bloodrequest order by bid desc;";
                    ResultSet rs=st.executeQuery(qry);

                              
                    int sno=0;
                    while(rs.next())
                    {
                      out.println("<hr>");
                      sno++;
                      out.println("<h3>"+sno+".</h3>");
                      out.println("<table style='font-size:18px;'>");
                      out.print("<tr><td><pre><b>Patient Name  </b></pre></td> <td><pre> "+rs.getString("name")+"</pre></td>");
                      out.print("<td style='padding-left:20%;'><pre><b>Blood Group  </b></pre></td> <td><pre> "+rs.getString("bloodgrp")+"</pre></td></tr>");
                      out.print("<tr><td><pre><b>Location </b></pre></td> <td><pre> "+rs.getString("location")+"</pre></td>");
                      out.print("<td style='padding-left:20%;'><pre><b>No. of Blood Units required </b></pre></td> <td><pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "+rs.getString("units")+"</pre></td></tr>");
                      out.print("<tr><td><pre><b>Hospital Name </b></pre></td> <td><pre> "+rs.getString("hospital")+"</pre></td>");
                      out.print("<td style='padding-left:20%;'><pre><b>Before the Date </b></pre></td> <td><pre> "+rs.getInt("day")+"-"+rs.getString("month")+"-"+rs.getInt("year")+"</pre></td></tr>");
                      out.print("<tr><td><pre><b>Contact No. </b></pre></td> <td><pre> "+rs.getString("mobile")+"</pre></td></tr>");
                      
                      out.println("</table>");
                      out.println("<a href='admin_delete_request.jsp?bid="+rs.getInt(1)+"' style='float:left; margin-top:0px; margin-left:45%;color:black; text-decoration:none;'><h4 style='color:darkred;'><input type='button' value='Delete Request'></h4></a>");
                      out.println("<br/><br/><br/><hr>");
                    } 
                         
                   
                    
              
               
                 }catch(Exception sb)
                 {
                     out.println("Error : "+sb.getMessage().toString());
                 }
        %>

        <%@include file="footer.jsp"%>
    </body>
</html>