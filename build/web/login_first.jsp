<html>
    <head>
        <title>Login | Register</title>
    <link type="text/css" rel="stylesheet" href="css.css" media="screen"/>
    <%@include file="header.jsp"%>
  <%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

    </head>
<body> 
<center>
    <div style="width: 100%">
        <div class="left_div" style="float:left; margin-top:100px; width:40%; margin-right:20px;">
            </br>
            <h2 style="color:darkred; margin-left:5%;">You Must Login First!</h2>
            
            <img src="image/log.jpg" style="padding-top:5px; padding-left:6%; height:100px; width:40%;">
            <br/>
            <form id="frm_login" name="frm_login" method="post" action="login_first.jsp">
        <table border="0" align="centre" style="margin-left:5%; width:35%; height:200px;">
  
        <tr>
            <td><font color="DarkGreen" width="20%"><b>EMAIL ID</b></font></td>
            <td><input type="email"  class="txt" name="username" required="required"></td> 
        </tr>    
        <tr>
        <td><font color="DarkGreen" width="20%"><b>PASSWORD</b></font></td>
        <td><input type="password" class="txt" name="password" required="required"></td>         
        </tr>
        <tr>
        <td></td> 
        <td>
            <input type="submit" value ="Login" class="but" id="login" name="login"> &nbsp;&nbsp;        
        <input type="reset" value="Reset" class="but">
        </td></tr>
   
        </table>
            </form>
         <%
            try{
                if(request.getParameter("login")!=null)
                {

                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor","root","");

                Statement st=con.createStatement();
                HttpSession obj=request.getSession();

             
                    ResultSet rs=st.executeQuery("select * from login");
                    int flag=0;
                   while(rs.next()){
            
                        if(request.getParameter("username").equals(rs.getString("email")) && request.getParameter("password").equals(rs.getString("password")))
                        {flag=1;
                             if(rs.getInt("id")==999)
                             {
                            obj.setAttribute("id1",rs.getString("id"));
                            response.sendRedirect("admin_home.jsp");
                             }else{
                                 obj.setAttribute("id1",rs.getString("id"));
                            response.sendRedirect("donor_home.jsp");
                             }
                        }
                       
                    
                    }
                   if(flag==0)
                   out.println("<h2 style='color:darkred; margin-left:13%;'>Incorrect Entries!</h2>");
                   
                    
             
                    
                }
            }catch(Exception str)
            {
                out.println("Error :"+str.getMessage());
            }
        %>

       
              
        </div>
        
       
        <div class="right_div">
            
            <img src="image/reg.jpg" style="padding-top:30px; padding-right:7%; height:100px; width:16%;">
    
            <form id="frm_register" method="post" action="login_first.jsp" name="frm_register">   
    <table align="centre" style="height: 400px">
        <br>
        <tr>
            <td><font color="DarkGreen"><b>NAME</b></font></td>
            <td><input type="text" name ="name" required="required"></td> 
        </tr>    
        
         <tr>
            <td><font color="DarkGreen"><b>BLOOD GROUP</b></td>
            <td>
            <select class="chzn-select" name='bloodGroup' id='bloodGroup'>
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
            <td><font color="DarkGreen"><b>LOCATION</b></td>
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
            <td><font color="DarkGreen"><b>ADDRESS</b></td>
            <td><textarea name ="address" cols="25" rows="2" required="required"></textarea></td>         
        </tr>
       
        <tr><td><font color="DarkGreen" width="20%"><b>DATE OF BIRTH</b></font></td>
        <td>
        <select name='day' id='day' class='chzn-select' style='width:80px;'>
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
                                <option value="2000" >2000</option>
                                <option value="1999" >1999</option>
                                <option value="1998" >1998</option>
                                <option value="1997" >1997</option>
                                <option value="1996" >1996</option>
                                <option value="1995" >1995</option>
                                <option value="1994" >1994</option>
                                <option value="1993" >1993</option>
                                <option value="1992" >1992</option>
                                <option value="1991" >1991</option>
                                <option value="1990" >1990</option>
                                <option value="1989" >1989</option>
                                <option value="1988" >1988</option>
                                <option value="1987" >1987</option>
                                <option value="1986" >1986</option>
                                <option value="1985" >1985</option>
                                <option value="1984" >1984</option>
                                <option value="1983" >1983</option>
                                <option value="1982" >1982</option>
                                <option value="1981" >1981</option>
                                <option value="1980" >1980</option>
                                <option value="1979" >1979</option>
                                <option value="1978" >1978</option>
                                <option value="1977" >1977</option>
                                <option value="1976" >1976</option>
                                <option value="1975" >1975</option>
                                <option value="1974" >1974</option>
                                <option value="1973" >1973</option>
                                <option value="1972" >1972</option>
                                <option value="1971" >1971</option>
                                <option value="1970" >1970</option>
                                <option value="1969" >1969</option>
                                <option value="1968" >1968</option>
                                <option value="1967" >1967</option>
                                <option value="1966" >1966</option>
                                <option value="1965" >1965</option>
                                <option value="1964" >1964</option>
                                <option value="1963" >1963</option>
                                <option value="1962" >1962</option>
                                <option value="1961" >1961</option>
                                <option value="1960" >1960</option>
                                <option value="1959" >1959</option>
                                </select></td>
        </tr>
        
        
        <tr>
            <td><font color="DarkGreen"><b>GENDER</b></font>
         <td>
         <font color="DarkGreen">MALE<input type ="radio" name ="gender" value="male"></font>
         <font color="DarkGreen">FEMALE<input type ="radio" name="gender" value="female"></font>
         </td>
         </tr>
            
        <tr>
            <td><font color="DarkGreen" width="20%" ><b>CONTACT NO.</b></font></td>
            <td><input type="number" name ="contact" required="required"></td> 
        </tr>    
      
        
        <tr>
            <td><font color="DarkGreen" width="20%"><b>EMAIL ADDRESS</b></font></td>
            <td><input type="email" name ="email" required="required"></td> 
        </tr> 
        
        <tr>
            <td><font color="DarkGreen" width="20%"><b>CHOOSE PASSWORD &nbsp;&nbsp;</b></font></td>
            <td><input type="password" name ="pwd" required="required"></td> 
        </tr> 
        
        
         <tr>
        <td></td><td></td>
         </tr>
        <tr>
        <td></td>
        <td>
        <input type ="submit" value ="Submit" class="but" id="regi">&nbsp;&nbsp;<input type="reset" value="Reset" class="but">
        </td>
        </tr>  
       
    
    </font>
    </table>
        
</form>
        </div>
            </div>
    <%
    try{
     String name,bloodgrp,address,location,month,gender,email,password,mobile;
       int year,day;
       name=null;//check for all others to be non-empty
       name=request.getParameter("name");
       
       if(name!=null){
        bloodgrp=request.getParameter("bloodGroup");
       address=request.getParameter("address");
       location=request.getParameter("location");
       mobile=request.getParameter("contact");
       day=Integer.parseInt(request.getParameter("day"));
       month=request.getParameter("month");
       year=Integer.parseInt(request.getParameter("year"));
      email=request.getParameter("email");
      password=request.getParameter("pwd");
       gender=request.getParameter("gender");
       
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor", "root", "");

               PreparedStatement ps=null;
               String sql;
               String approve=null;
               int id=0;
               sql="insert into toapprove values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
               ps=con.prepareStatement(sql);
               ps.setInt(1,id);
                 ps.setString(2,name);
               ps.setString(3,bloodgrp);
               ps.setString(4,location);
               ps.setString(5,address);               
                ps.setInt(6,day);
               ps.setString(7,month);
               ps.setInt(8,year);
               ps.setString(9,gender);
                ps.setString(10,mobile);
               ps.setString(11,email);
               ps.setString(12,password);
               ps.setString(13,approve);
                
               
               
               if(ps.executeUpdate()>0)      
               out.println("<h2 style='margin-left:36%; margin-top:40px;'>Registration Successful!!</h2>"); 
       }
    }
    catch(Exception e){
    out.println(e);
    }
    
    
    %>

</center>
    <%@ include file="footer.jsp" %>
   
</body>
</html>
