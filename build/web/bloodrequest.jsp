<html>
    <head>
        <title>Blood Request</title>
        <link type="text/css" rel="stylesheet" href="css.css" media="screen" />
    </head>
    <body>
        <%@include file="header.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>


        <% 
          for(int i=1;i<=1;i++)
              out.println("<br>");
    %>
        <center>
            <h1 style="color:darkred;">Post Your Blood Request</h1>
            <br>
            <form method="post" action="bloodrequest.jsp">
                <table align="center" style="font-size:22px;border:solid 5px aliceblue; height:400px;" >
                
                <tr>
                 <td><font color="DarkGreen" >Patient Name</font></td>
                 <td><input type="text" name="txtname" required="required"></td>  
             </tr>
             
             <tr>
                 <td><font color="DarkGreen" >Patient Blood Group</font></td> 
              <td>   <select class="chzn-select" name='txtbloodgrp' id='bloodGroup'>
                <option value='-1'>Your Blood Group</option>
                                <option value="A+" >A+</option>
                                <option value="A-" >A-</option>
                                <option value="B+" >B+</option>
                                <option value="B-" >B-</option>
                                <option value="O+" >O+</option>
                                <option value="O-" >O-</option>
                                <option value="AB+" >AB+</option>
                                <option value="AB-" >AB-</option>
                                </select></td>
             </tr>
             <tr>
                 <td><font color="DarkGreen" >Patient Age</font></td>
                 <td><input type="number" name="txtage" required="required"></td>  
             </tr>
             <tr>
                 <td><font color="DarkGreen" >Needed Before?</font></td>
                 <td> <select name='day' id='day' class='chzn-select' style='width:80px;'>
                <option value='-1'>--Day--</option>
                                <option value="01" >01</option>
                                <option value="02" >02</option>
                                <option value="03" >03</option>
                                <option value="04" >04</option>
                                <option value="05" >05</option>
                                <option value="06" >06</option>
                                <option value="07" >07</option>
                                <option value="08" >08</option>
                                <option value="09" >09</option>
                                <option value="10" >10</option>
                                <option value="11" >11</option>
                                <option value="12" >12</option>
                                <option value="13" >13</option>
                                <option value="14" >14</option>
                                <option value="15" >15</option>
                                <option value="16" >16</option>
                                <option value="17" >17</option>
                                <option value="18" >18</option>
                                <option value="19" >19</option>
                                <option value="20" >20</option>
                                <option value="21" >21</option>
                                <option value="22" >22</option>
                                <option value="23" >23</option>
                                <option value="24" >24</option>
                                <option value="25" >25</option>
                                <option value="26" >26</option>
                                <option value="27" >27</option>
                                <option value="28" >28</option>
                                <option value="29" >29</option>
                                <option value="30" >30</option>
                                <option value="31" >31</option>
                                </select>
                <select name='month' id='month' class='chzn-select' style='width:80px;'>
                <option value='-1'>--Mon--</option>
                                <option value="Jan"  >Jan</option>
                                <option value="Feb"  >Feb</option>
                                <option value="Mar"  >Mar</option>
                                <option value="Apr"  >Apr</option>
                                <option value="May"  >May</option>
                                <option value="Jun"  >Jun</option>
                                <option value="Jul"  >Jul</option>
                                <option value="Aug"  >Aug</option>
                                <option value="Sep"  >Sep</option>
                                <option value="Oct"  >Oct</option>
                                <option value="Nov"  >Nov</option>
                                <option value="Dec"  >Dec</option>
                                </select>
                <select name='year' id='year' class='chzn-select' style='width:80px;'>
                <option value='-1'>--Year--</option>
                                <option value="2018" >2018</option>
                                <option value="2019" >2019</option>
                                <option value="2020" >2020</option>
                               
                                </select> 
             </tr>
             <tr>
                 <td><font color="DarkGreen" >Number of units needed? &nbsp;&nbsp;&nbsp;</font></td>
                 <td><input type="number" name="txtunits" required="required"></td>  
             </tr>
              <tr>
                 <td><font color="DarkGreen" >Hospital Name</font></td>
                 <td><input type="text" name="txthospital" required="required"></td>  
             </tr>
             <tr>
                 <td><font color="DarkGreen" >Address</font></td>
                 <td><textarea name ="txtaddress" cols="25" rows="2"></textarea></td>  
             </tr>
             <tr>
                
                 <td><font color="DarkGreen" >Location</font></td>
                 <td>
                 <select name="location">
                         <option>Your Location</option>
                         <option value="Indore">Indore</option>
                         <option value="Ujjain"> Ujjain</option>
                         <option value="Dewas">Dewas</option>
                         <option value="Bhopal">Bhopal</option>
                         <option value="Ratlam">Ratlam</option>
                         </select>
                     </td>
             </tr>
             <tr>
                 
                 <td><font color="DarkGreen" >Mobile</font></td>
                 <td><input type="number" name="txtmobile" required="required"></td>  
             </tr>
             <tr>
                  <td></td>
              <td>
                  <input type="Submit" value="Submit">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="Reset" value="Reset">
              </td> 
             </tr>
                
            </table>
            
            </form>
        </center>
    <%
       try {
       String name,bloodgrp,address,city,month,mobile,hospital;
       int year,day,age,units;
       name=null;//check for all others to be non-empty
       name=request.getParameter("txtname");
       
       if(name!=null){
       bloodgrp=request.getParameter("txtbloodgrp");
       address=request.getParameter("txtaddress");
       city=request.getParameter("location");
       mobile=(request.getParameter("txtmobile"));
       day=Integer.parseInt(request.getParameter("day"));
       month=request.getParameter("month");
       year=Integer.parseInt(request.getParameter("year"));
       age=Integer.parseInt(request.getParameter("txtage"));
       units=Integer.parseInt(request.getParameter("txtunits"));
       hospital=request.getParameter("txthospital");

        Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor", "root", "");

               PreparedStatement ps=null;
               String sql;
               sql="insert into bloodrequest values(?,?,?,?,?,?,?,?,?,?,?,?)";
               ps=con.prepareStatement(sql);
              int id=0;
               ps.setString(2,name);
               ps.setString(3,bloodgrp);
               ps.setInt(4,age);
                ps.setInt(5,day);
               ps.setString(6,month);
               ps.setInt(7,year);
               ps.setInt(8,units);
               ps.setString(9,hospital);
               ps.setString(10,address);
               ps.setString(11,city);
               ps.setString(12,mobile);
              ps.setInt(1,id);
               
               if(ps.executeUpdate()>0)      
               out.println("<center><br><h2 style='color:darkgreen;'>Request Submitted!!</h2></center>");   
       }}
       catch(Exception e){
           out.println(e);
       }

    
    %>
        
        <%@include file="footer.jsp"%>
    </body>
</html>
