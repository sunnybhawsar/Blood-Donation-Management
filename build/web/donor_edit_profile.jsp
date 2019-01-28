<%-- 
    Document   : donor_edit_profile
    Created on : 1 Apr, 2018, 12:49:03 PM
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
        <title>Donor | Profile</title>
        <link type="text/css" rel="stylesheet" href="css.css" media="screen" />
        <link type="text/css" rel="stylesheet" href="admin_css.css" media="screen" />
    </head>
    <body>
     
        
                <%@page import="java.sql.*;" %>
<%@page import="java.util.*;" %>
     <center>
        <br>
        <h2 style="color: darkslategrey;">Edit Profile</h2>
        

        <br><br><br>
        
         <%
          String nam=null;
                nam=request.getParameter("nam");
             
          if(nam==null){
             try
                 { 
                    // out.println("hi");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor","root","");
                    Statement st=con.createStatement();

               
                    String qry="select * from blood_donors where id='"+sid+"' ;";
                    ResultSet rs=null;
                            
                    rs=st.executeQuery(qry);

                    out.println("<center><br>");             
                    out.println("<div style='float:left;margin-left:25%;margin-right:10%;'>");    
                    out.println("<form id='frm1' method='post'action='donor_edit_profile.jsp' >");
                    while(rs.next())
                    {
                      out.println("<table border='0' style='font-size:16px;'>");
                      out.print("<tr><td><pre style='color:darkgreen;'>Name </pre></td> <td><pre><input type='text' id='nam' name='nam' value="+rs.getString("name")+" /></pre></td></tr>");
                     out.print("<tr><td><pre style='color:darkgreen;'>Location </pre></td> <td><pre> <input type='text' id='loc' name='loc' value="+rs.getString("location")+" /></pre></td></tr>");
                      out.print("<tr><td><pre style='color:darkgreen;'>Address </pre></td> <td><pre> <input type='text' id='add' name='add' value="+rs.getString("address")+" /></pre></td></tr>");
                       out.print("<tr><td><pre style='color:darkgreen;'>Gender </pre></td> <td><pre> <input type='text' id='gen' name='gen' value="+rs.getString("gender")+" /></pre></td></tr>");
                       out.print("<tr><td><pre style='color:darkgreen;'>Contact No. </pre></td> <td><pre> <input type='text' id='con' name='con' value="+rs.getString("mobile")+" /></pre></td></tr>");
                        out.print("<tr><td><pre style='color:darkgreen;'>Status </pre></td> <td><pre> <input type='text' id='stat' name='stat' value="+rs.getString("status")+" /></pre></td></tr>");
                              
                      out.println("</table><br><br>");
                    } 
                  
                    out.println("<input type='submit' id='edit_pro' name='edit_pro' value='Update Basic Info' />");
                    out.println("</form>");
                    out.println("</div>");             
                
              
                    
                    String sql="select * from login where id='"+sid+"' ;";
                    ResultSet rr=st.executeQuery(sql);
                    

                    out.println("<div style='float:left; margin-top:60px;'>");    
                    out.println("<form id='frm2' method='post'>");
                    
                    while(rr.next())
                    {
                      out.println("<table border='0' style='font-size:16px;'>");
                      out.print("<tr><td><pre style='color:darkgreen;'>Email </pre></td> <td><pre><input type='text' id='email' name='email' value="+rr.getString("email")+" /></pre></td></tr>");
                       out.print("<tr><td><pre style='color:darkgreen;'>Password </pre></td> <td><pre> <input type='text' id='pwd' name='pwd' value="+rr.getString("password")+" /></pre></td></tr>");
                          
                      out.println("</table><br><br>");
                    } 
                  
                    out.println("<a href='donor_edit_profile.jsp'><input type='button' id='edit_log' name='edit_log' value='Update Login Info' /></a>");
                    out.println("</form>");
                    out.println("</div>");             
                    
                       out.println("</center>");}
                    
                 catch(Exception sb)
                 {
                     out.println("Error : "+sb.getMessage().toString());
                 }}else{
        %>
       
        
    </center>

        
      
    </body>
</html>

<%@page import="java.sql.*;" %>
<%@page import="java.util.*;" %>
<%
    
    
    try{    
String loc=request.getParameter("loc");
String add=request.getParameter("add");
String gen=request.getParameter("gen");
String con=request.getParameter("con");
String stat=request.getParameter("stat");
 //out.println(add);

{
Class.forName("com.mysql.jdbc.Driver");
Connection c=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor","root","");
PreparedStatement ps=null;


String upd="update blood_donors set location=?,address=?,gender=?,mobile=?,status=?,name=? where id=?";
ps=c.prepareStatement(upd);
ps.setString(1, loc);
ps.setString(2, add);
ps.setString(3, gen);
ps.setString(4, con);
ps.setString(5, stat);
ps.setString(6, nam);
ps.setString(7, sid);
if(ps.executeUpdate()>0)
{
out.println("<center><h3>Details Updated Sucessfully!!</h3></center>");
out.println("<center><h3><a href='donor_profile.jsp'>Profile</a></h3></center>");
}
else
{
out.println("<center><h3>Error to update Basic Details!</h3></center>");
}
}

    }  
    catch(Exception e){
    out.println(e);}
    
     
    
    try{
   
String email=request.getParameter("email");
String pwd=request.getParameter("pwd");
if(1==2){
Class.forName("com.mysql.jdbc.Driver");
Connection c=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor","root","");
PreparedStatement qs=null;
String ls="update login set email=? and password=? where id=? ";
qs=c.prepareStatement(ls);
qs.setString(1, email);
qs.setString(2, pwd);
qs.setString(3,sid);
if(qs.executeUpdate()>0)
{
out.println("<center><h3>Upadted!</h3></center>");
}
else
{
out.println("<center><h3>Error to Update Login Details!</h3></center>");
}
}  }
    catch(Exception e){
    out.println(e);}
    }
 
%>