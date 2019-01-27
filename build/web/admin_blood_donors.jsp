<%-- 
    Document   : admin_blood_donors
    Created on : 31 Mar, 2018, 3:31:27 PM
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

 <%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin | Blood Donors</title>
        <link type="text/css" rel="stylesheet" href="css.css" media="screen" />
        <link type="text/css" rel="stylesheet" href="admin_css.css" media="screen" />
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
        <h2 style="color: darkslategrey;">Blood Donors</h2>
        
         <br> <br>
        <%
          try
                 {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor","root","");
                    Statement st=con.createStatement();

                    String qry="select * from blood_donors order by did desc;";
                    ResultSet rs=st.executeQuery(qry);

                              
                    int sno=0;
                    out.println("<table border='1' style='width:90%;font-size:18px;border:solid 4px aliceblue;'>");
                    out.println("<tr align=left style='background-color:lightgray;'><th>S.No.</th> <th>Name</th> <th>Blood Group</th> <th>Location</th> <th>Address</th> <th>DOB</th> <th>Gender</th> <th>Mobile</th> <th>Status</th> <th align=center>Remove Donor</th> </tr>");
                    while(rs.next())
                    {
                        sno++;
                        out.println("<tr>");
                      
                      out.println("<td>"+sno+".</td>");
                      out.println("<td>"+rs.getString("name")+"</td>");
                      out.println("<td>"+rs.getString("bloodgrp")+"</td>");
                      out.println("<td>"+rs.getString("location")+"</td>");
                      out.println("<td>"+rs.getString("address")+"</td>");
                      out.println("<td>"+rs.getInt("day")+"-"+rs.getString("month")+"-"+rs.getInt("Year")+"</td>");
                      out.println("<td>"+rs.getString("gender")+"</td>");
                      out.println("<td>"+rs.getString("mobile")+"</td>");
                      out.println("<td>"+rs.getString("status")+"</td>");
                      out.println("<td align=center><a href='admin_remove_donor.jsp?tid="+rs.getInt("did")+"'>Remove</a></td>");
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
