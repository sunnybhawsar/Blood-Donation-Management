<%-- 
    Document   : search_donor
    Created on : 30 Mar, 2018, 6:04:19 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*;" %>
<%
String l=request.getParameter("location").toString();
String b=request.getParameter("bloodg").toString();
String z="";


if(l.equals(" ") || b.equals(" "))
{
out.println("<center><br><pre style='font-size:20px; '>Please Select Location and Blood Group!</pre></center>");
}
else
{

  try
        {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor","root","");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from blood_donors where location='"+l+"' and bloodgrp='"+b+"';");
                
                z+="<table border='1' style='width:100%;'>";
                z+="<tr style='text-align:left;'><th>S.No</th> <th>Name</th> <th>Age</th> <th>Gender</th> <th>Contact No.</th> <th>Available Or Not</th></tr>";
                int sno=0;
                while(rs.next())
                {
                sno++;
                z+="<tr align='left'>";
                z+="<td>"+sno+"</td>";
                z+="<td>"+rs.getString("name")+"</td>";
                int age=2018-rs.getInt("year");
                
                z+="<td>"+age+"</td>";
                z+="<td>"+rs.getString("gender")+"</td>";
                z+="<td>"+rs.getString("mobile")+"</td>";
                z+="<td>"+rs.getString("status")+"</td>";
                z+="</tr>";
                }
                z+="</table>";  
             
                out.println(z);                      
        }
        catch(Exception ee)
        {
        out.println("Error : "+ee.getMessage());
        }

}
%>
