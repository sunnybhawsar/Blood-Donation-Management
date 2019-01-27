<%-- 
    Document   : donor_blood_request
    Created on : 31 Mar, 2018, 3:44:56 PM
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
        <title>Donor | Blood Request</title>
        <link type="text/css" rel="stylesheet" href="css.css" media="screen" />
        <link type="text/css" rel="stylesheet" href="admin_css.css" media="screen" />
    <%@page import="java.sql.*;" %>
<%@page import="java.util.*;" %>
    </head>
    <body>
        <%@include file="donor_header.jsp"%>
         <center>
        <br>
        <h2 style="color: darkslategrey;">Blood Requests</h2>
        
    </center>
        <br><br>
    
        <%
            String bg=null;
          try
                 {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor","root","");
                    Statement st=con.createStatement();
                    String gg="select bloodgrp from blood_donors where id="+sid+"; ";
                    ResultSet rr=st.executeQuery(gg);
                    while(rr.next())
                    {
                    bg=rr.getString("bloodgrp");
                    }
                    String qry="select * from bloodrequest where bloodgrp='"+bg+"' order by bid desc;";
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
