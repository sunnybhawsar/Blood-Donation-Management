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
        <title>Admin | Blood Donor</title>
        <link type="text/css" rel="stylesheet" href="css.css" media="screen" />
        <link type="text/css" rel="stylesheet" href="admin_css.css" media="screen" />
    </head>
    <body>
        <%@include file="admin_header.jsp"%>
        <%@page import="java.sql.*;" %>
<%@page import="java.util.*;" %>
        <center>
        <br>
        
         <%
          try
                 {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor","root","");
                    Statement st=con.createStatement();

                 
                    String id=request.getParameter("tid").toString();

                    String qry="select * from toapprove where tid='"+id+"' ;";
                    ResultSet rs=st.executeQuery(qry);

                    out.println("<center><br>");             
                     
                    while(rs.next())
                    {
                      out.println("<table border='0' style='font-size:16px;'>");
                      out.print("<tr><td><pre style='color:darkgreen;'>Name </pre></td> <td><pre> "+rs.getString("name")+"</pre></td></tr>");
                       out.print("<tr><td><pre style='color:darkgreen;'>Blood Group </pre></td> <td><pre> "+rs.getString("bloodgrp")+"</pre></td></tr>");
                        out.print("<tr><td><pre style='color:darkgreen;'>Location </pre></td> <td><pre> "+rs.getString("location")+"</pre></td></tr>");
                        out.print("<tr><td><pre style='color:darkgreen;'>Address </pre></td> <td><pre> "+rs.getString("address")+"</pre></td></tr>");
                         out.print("<tr><td><pre style='color:darkgreen;'>Date of Birth &nbsp;&nbsp;&nbsp;</pre></td> <td><pre> "+rs.getInt("day")+"-"+rs.getString("month")+"-"+rs.getInt("year")+"</pre></td></tr>");
                           out.print("<tr><td><pre style='color:darkgreen;'>Gender </pre></td> <td><pre> "+rs.getString("gender")+"</pre></td></tr>");
                             out.print("<tr><td><pre style='color:darkgreen;'>Contact No. </pre></td> <td><pre> "+rs.getString("mobile")+"</pre></td></tr>");
                                out.print("<tr><td><pre style='color:darkgreen;'>Email Address</pre></td> <td><pre> "+rs.getString("email_id")+"</pre></td></tr>");
                      
                      out.println("</table>");
                    } 
                    out.println("<br><br>");
                    out.println("<a href='admin_donor_approve.jsp?id="+id+"'><input type=submit id='approve' name='approve' value='Approve'></a>  <a href='admin_donor_disapprove.jsp?id="+id+"'><input type=submit id='disapprove' name='disapprove' value='Disapprove' style='margin-left:5%;'></a>");
                    
                    out.println("</center>");
                    
              
                   
                 }catch(Exception sb)
                 {
                     out.println("Error : "+sb.getMessage().toString());
                 }
        %>
       
        
    </center>
        <%@include file="footer.jsp"%>
    </body>
</html>
