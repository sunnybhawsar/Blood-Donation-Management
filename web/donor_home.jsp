<%-- 
    Document   : donor_home
    Created on : 31 Mar, 2018, 3:47:16 PM
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
<title>Donor | Home</title>

<link type="text/css" rel="stylesheet" href="css.css" media="screen" />
<link type="text/css" rel="stylesheet" href="admin_css.css" media="screen" />
<style type="text/css">
</style>

<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $("#donor_div").hide();
    
    $("#search").click(function(){
        $("#donor_div").slideDown(500);
        
        var loc=$("#location").val();
        var blood=$("#bloodg").val();
        
        
        $.post("search_donor.jsp",{location:loc,bloodg:blood},function(data){
            $("#donor_tab").html(data);
            $("#lcn").html(loc);
            $("#grp").html(" , "+blood);
        });
        
    });
    
    $("#close").click(function(){
        $("#donor_div").slideUp(200);
    });
});
</script>

</head>

<body>
<div id="back">
  <%@page import="java.sql.*;" %>
<%@page import="java.util.*;" %>
 <%@include file="donor_header.jsp"%>
                                                                       <!-- Menu -->
                                                                       
                                                                       <!-- Body -->
  <%
      String nn=null;
          try
                 {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor","root","");
                    Statement st=con.createStatement();

               
                    String qry="select name from blood_donors where id='"+sid+"' ;";
                    ResultSet rs=st.executeQuery(qry);
                    
                    while(rs.next())
                    {
                    nn=rs.getString("name");
                    }
               }
          catch(Exception sb)
        {
            
        }
%>   
    
     <div class="check">
         
         <center>    
         <div style="height:250px; width:50%;">
             <br>
             <h2 style="color:darkgreen;">Welcome <%out.println(nn);%>!</h2>
         <img src='image/images (7).jpg' style="height:80%; padding-top:0px; width:100%;" />
         </div>
         </center>
        
    </div>
    
     <center>                                                                 
     <div class="main">
         
        <div style="height:230px; width:35%; border:lightslategray  groove 4px; float:right; margin-top:80px; margin-right:5%; overflow:hidden;">
            
                 <div style="width:100%; height:35px; ">
                 <center><h2 style="padding-top:0px; margin-top:0px; margin-right:5%; color:darkred;">Blood Requests</h2></center>
                 </div>
            <br>
                 <div style="width:100%; height:90%; overflow:scroll;">
                  <!--   <marquee direction="up"> -->
                  <!--  <marquee direction="up" onMouseOver="this.stop();" onMouseOut="this.start();"> -->
                 <table>
                 
                 <%
                         String city,bloodgrp,month;
                         int day,year,id;
         
                    try {  
                        Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor", "root", "");
        ResultSet rs=null;
        PreparedStatement ps=null;
               String sql;
               sql="select * from bloodrequest";
        ps=con.prepareStatement(sql);
               rs=ps.executeQuery();
               
               while(rs.next())
              { 
                city=rs.getString(11);
                bloodgrp=rs.getString(3);
                day=rs.getInt(5);
                month=rs.getString(6);
                year=rs.getInt(7); 
                id=rs.getInt(1);
                
          
               
                
      out.println(" <tr style='font-size:20px;'><td> "+city+" &nbsp;</td><td>|&nbsp; "+bloodgrp+"  </td><td>| &nbsp; "+day+" "+month+" "+year+"</td> <td>&nbsp;&nbsp;&nbsp;&nbsp; <a href="+"donor_more_blood_request.jsp?bid="+id+""+"><u>More</u></a></td></tr>");
              }
                    }
                    catch(Exception e){
                        out.println(e);
                    }
                    


 
                     %>
                 
       
                 
                 </table>
                   <!-- </marquee> -->
                  </div>
            
         </div>
         
         <div style="height:300px; width:30%;  float:right; margin-top:50px; margin-right:15%; overflow:hidden;">
             <br><br>
             <center><h1 style="color:darkred;">Search a Blood Donor</h1></center>
             <form id="frm" name="frm">
             <pre style="font-size:22px;">Location : <select id="location" name="location">
                         <option value=" ">select</option>
                         <option>Indore</option>
                         <option>Ujjain</option>
                         <option>Dewas</option>
                         <option>Bhopal</option>
                         <option>Ratlam</option>
                         </select></pre>
             <pre style="font-size:22px;">Blood Group : <select id="bloodg" name="bloodg">
                         <option value=" ">select</option>
                                <option value="A+" >A+</option>
                                <option value="A-" >A-</option>
                                <option value="B+" >B+</option>
                                <option value="B-" >B-</option>
                                <option value="O+" >O+</option>
                                <option value="O-" >O-</option>
                                <option value="AB+" >AB+</option>
                                <option value="AB-" >AB-</option>
                                </select></pre>
         
         <input type="button" value="Search" class="but" id="search"/>
             </form>
         </div>
         
         </div>
                                                                     
                                                                       <!-- Main div close -->     
     
        <div class="donor" id="donor_div" style="height:320px;">
            <center>
                <h2 style="margin-left:14%;">Blood Donors <span style="float:right; color:darkred; margin-right:7%;" id="grp"></span><span style="float:right; color:darkred;" id="lcn"></span></h2>
            
            <div class="donor_table" id="donor_tab" style="width:90%; height:220px; overflow:scroll;">
            </div>
                <pre id="close" style="float:right; color:darkblue; margin-right:20px;"><b>Close</b></pre>
            </center>
        </div>        
        
                                                                       
        </center>
                                                                       
<%@include file="footer.jsp"%>

</div>
</body>

</html>
