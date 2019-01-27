package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class Registration_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Login | Register</title>\n");
      out.write("    <link type=\"text/css\" rel=\"stylesheet\" href=\"css.css\" media=\"screen\"/>\n");
      out.write("    ");
      out.write("<div id=\"menu_div\" class=\"menu_div\">\n");
      out.write("<a href=\"index.jsp\"><div id=\"menu1\" class=\"menu_logo\"><center><p id=\"m1\" class=\"mm\">BLOOD DONATION</p></center></div></a>\n");
      out.write("\n");
      out.write("<a href=\"about.jsp\"><div id=\"menu2\" class=\"menu\"><center><p id=\"m2\" class=\"m\">About Us</p></center></div></a>\n");
      out.write("<a href=\"bloodrequest.jsp\"><div id=\"menu3\" class=\"menu\"><center><p id=\"m3\" class=\"m\">Request Blood</p></center></div></a>\n");
      out.write("<a href=\"Registration.jsp\"><div id=\"menu4\" class=\"menu\"><center><p id=\"m4\" class=\"m\">Login/Register</p></center></div></a>\n");
      out.write("<a href=\"information.jsp\"><div id=\"menu5\" class=\"menu\"><center><p id=\"m5\" class=\"m\">Information</p></center></div></a>\n");
      out.write("<a href=\"contactus.jsp\"><div id=\"menu6\" class=\"menu\"><center><p id=\"m6\" class=\"m\">Contact Us</p></center></div></a>\n");
      out.write("</div>");
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("<body> \n");
      out.write("<center>\n");
      out.write("    <div style=\"width: 100%\">\n");
      out.write("        <div class=\"left_div\" style=\"float:left; margin-top:120px; width:40%; margin-right:20px;\">\n");
      out.write("            </br>\n");
      out.write("            \n");
      out.write("            <img src=\"image/log.jpg\" style=\"padding-top:5px; padding-left:6%; height:100px; width:40%;\">\n");
      out.write("            <br/>\n");
      out.write("            <form id=\"frm_login\" name=\"frm_login\" method=\"post\" action=\"Registration.jsp\">\n");
      out.write("        <table border=\"0\" align=\"centre\" style=\"margin-left:5%; width:35%; height:200px;\">\n");
      out.write("  \n");
      out.write("        <tr>\n");
      out.write("            <td><font color=\"DarkGreen\" width=\"20%\"><b>EMAIL ID</b></font></td>\n");
      out.write("            <td><input type=\"email\"  class=\"txt\" name=\"username\" required=\"required\"></td> \n");
      out.write("        </tr>    \n");
      out.write("        <tr>\n");
      out.write("        <td><font color=\"DarkGreen\" width=\"20%\"><b>PASSWORD</b></font></td>\n");
      out.write("        <td><input type=\"password\" class=\"txt\" name=\"password\" required=\"required\"></td>         \n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("        <td></td> \n");
      out.write("        <td>\n");
      out.write("            <input type=\"submit\" value =\"Login\" class=\"but\" id=\"login\" name=\"login\"> &nbsp;&nbsp;        \n");
      out.write("        <input type=\"reset\" value=\"Reset\" class=\"but\">\n");
      out.write("        </td></tr>\n");
      out.write("   \n");
      out.write("        </table>\n");
      out.write("            </form>\n");
      out.write("        ");

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
        
      out.write("\n");
      out.write("\n");
      out.write("              \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("        <div class=\"right_div\">\n");
      out.write("            \n");
      out.write("            <img src=\"image/reg.jpg\" style=\"padding-top:30px; padding-right:7%; height:100px; width:16%;\">\n");
      out.write("    \n");
      out.write("            <form id=\"frm_register\" method=\"post\" action=\"Registration.jsp\" name=\"frm_register\">   \n");
      out.write("    <table align=\"centre\" style=\"height: 400px\">\n");
      out.write("        <br>\n");
      out.write("        <tr>\n");
      out.write("            <td><font color=\"DarkGreen\"><b>NAME</b></font></td>\n");
      out.write("            <td><input type=\"text\" name =\"name\" required=\"required\"></td> \n");
      out.write("        </tr>    \n");
      out.write("        \n");
      out.write("         <tr>\n");
      out.write("            <td><font color=\"DarkGreen\"><b>BLOOD GROUP</b></td>\n");
      out.write("            <td>\n");
      out.write("            <select class=\"chzn-select\" name='bloodGroup' id='bloodGroup'>\n");
      out.write("                <option value='-1'>Your Blood Group</option>\n");
      out.write("                                <option value=\"A+\" >A+</option>\n");
      out.write("                                <option value=\"A-\" >A-</option>\n");
      out.write("                                <option value=\"B+\" >B+</option>\n");
      out.write("                                <option value=\"B-\" >B-</option>\n");
      out.write("                                <option value=\"O+\" >O+</option>\n");
      out.write("                                <option value=\"O-\" >O-</option>\n");
      out.write("                                <option value=\"AB+\" >AB+</option>\n");
      out.write("                                <option value=\"AB-\" >AB-</option>\n");
      out.write("                             \n");
      out.write("                                </select></td>         \n");
      out.write("        </tr>\n");
      out.write("        \n");
      out.write("          <tr>\n");
      out.write("            <td><font color=\"DarkGreen\"><b>LOCATION</b></td>\n");
      out.write("            <td>\n");
      out.write("                <select name=\"location\">\n");
      out.write("                         <option>Your Location</option>\n");
      out.write("                         <option value=\"Indore\">Indore</option>\n");
      out.write("                         <option value=\"Ujjain\"> Ujjain</option>\n");
      out.write("                         <option value=\"Dewas\">Dewas</option>\n");
      out.write("                         <option value=\"Bhopal\">Bhopal</option>\n");
      out.write("                         <option value=\"Ratlam\">Ratlam</option>\n");
      out.write("                         </select>\n");
      out.write("            </td>         \n");
      out.write("        </tr>\n");
      out.write("      \n");
      out.write("        \n");
      out.write("        <tr>\n");
      out.write("            <td><font color=\"DarkGreen\"><b>ADDRESS</b></td>\n");
      out.write("            <td><textarea name =\"address\" cols=\"25\" rows=\"2\" required=\"required\"></textarea></td>         \n");
      out.write("        </tr>\n");
      out.write("       \n");
      out.write("        <tr><td><font color=\"DarkGreen\" width=\"20%\"><b>DATE OF BIRTH</b></font></td>\n");
      out.write("        <td>\n");
      out.write("        <select name='day' id='day' class='chzn-select' style='width:80px;'>\n");
      out.write("                <option value='-1'>--Day--</option>\n");
      out.write("                                <option value=\"01\" >01</option>\n");
      out.write("                                <option value=\"02\" >02</option>\n");
      out.write("                                <option value=\"03\" >03</option>\n");
      out.write("                                <option value=\"04\" >04</option>\n");
      out.write("                                <option value=\"05\" >05</option>\n");
      out.write("                                <option value=\"06\" >06</option>\n");
      out.write("                                <option value=\"07\" >07</option>\n");
      out.write("                                <option value=\"08\" >08</option>\n");
      out.write("                                <option value=\"09\" >09</option>\n");
      out.write("                                <option value=\"10\" >10</option>\n");
      out.write("                                <option value=\"11\" >11</option>\n");
      out.write("                                <option value=\"12\" >12</option>\n");
      out.write("                                <option value=\"13\" >13</option>\n");
      out.write("                                <option value=\"14\" >14</option>\n");
      out.write("                                <option value=\"15\" >15</option>\n");
      out.write("                                <option value=\"16\" >16</option>\n");
      out.write("                                <option value=\"17\" >17</option>\n");
      out.write("                                <option value=\"18\" >18</option>\n");
      out.write("                                <option value=\"19\" >19</option>\n");
      out.write("                                <option value=\"20\" >20</option>\n");
      out.write("                                <option value=\"21\" >21</option>\n");
      out.write("                                <option value=\"22\" >22</option>\n");
      out.write("                                <option value=\"23\" >23</option>\n");
      out.write("                                <option value=\"24\" >24</option>\n");
      out.write("                                <option value=\"25\" >25</option>\n");
      out.write("                                <option value=\"26\" >26</option>\n");
      out.write("                                <option value=\"27\" >27</option>\n");
      out.write("                                <option value=\"28\" >28</option>\n");
      out.write("                                <option value=\"29\" >29</option>\n");
      out.write("                                <option value=\"30\" >30</option>\n");
      out.write("                                <option value=\"31\" >31</option>\n");
      out.write("                                </select>\n");
      out.write("                <select name='month' id='month' class='chzn-select' style='width:80px;'>\n");
      out.write("                <option value='-1'>--Mon--</option>\n");
      out.write("                                <option value=\"Jan\"  >Jan</option>\n");
      out.write("                                <option value=\"Feb\"  >Feb</option>\n");
      out.write("                                <option value=\"Mar\"  >Mar</option>\n");
      out.write("                                <option value=\"Apr\"  >Apr</option>\n");
      out.write("                                <option value=\"May\"  >May</option>\n");
      out.write("                                <option value=\"Jun\"  >Jun</option>\n");
      out.write("                                <option value=\"Jul\"  >Jul</option>\n");
      out.write("                                <option value=\"Aug\"  >Aug</option>\n");
      out.write("                                <option value=\"Sep\"  >Sep</option>\n");
      out.write("                                <option value=\"Oct\"  >Oct</option>\n");
      out.write("                                <option value=\"Nov\"  >Nov</option>\n");
      out.write("                                <option value=\"Dec\"  >Dec</option>\n");
      out.write("                                </select>\n");
      out.write("                <select name='year' id='year' class='chzn-select' style='width:80px;'>\n");
      out.write("                <option value='-1'>--Year--</option>\n");
      out.write("                                <option value=\"2000\" >2000</option>\n");
      out.write("                                <option value=\"1999\" >1999</option>\n");
      out.write("                                <option value=\"1998\" >1998</option>\n");
      out.write("                                <option value=\"1997\" >1997</option>\n");
      out.write("                                <option value=\"1996\" >1996</option>\n");
      out.write("                                <option value=\"1995\" >1995</option>\n");
      out.write("                                <option value=\"1994\" >1994</option>\n");
      out.write("                                <option value=\"1993\" >1993</option>\n");
      out.write("                                <option value=\"1992\" >1992</option>\n");
      out.write("                                <option value=\"1991\" >1991</option>\n");
      out.write("                                <option value=\"1990\" >1990</option>\n");
      out.write("                                <option value=\"1989\" >1989</option>\n");
      out.write("                                <option value=\"1988\" >1988</option>\n");
      out.write("                                <option value=\"1987\" >1987</option>\n");
      out.write("                                <option value=\"1986\" >1986</option>\n");
      out.write("                                <option value=\"1985\" >1985</option>\n");
      out.write("                                <option value=\"1984\" >1984</option>\n");
      out.write("                                <option value=\"1983\" >1983</option>\n");
      out.write("                                <option value=\"1982\" >1982</option>\n");
      out.write("                                <option value=\"1981\" >1981</option>\n");
      out.write("                                <option value=\"1980\" >1980</option>\n");
      out.write("                                <option value=\"1979\" >1979</option>\n");
      out.write("                                <option value=\"1978\" >1978</option>\n");
      out.write("                                <option value=\"1977\" >1977</option>\n");
      out.write("                                <option value=\"1976\" >1976</option>\n");
      out.write("                                <option value=\"1975\" >1975</option>\n");
      out.write("                                <option value=\"1974\" >1974</option>\n");
      out.write("                                <option value=\"1973\" >1973</option>\n");
      out.write("                                <option value=\"1972\" >1972</option>\n");
      out.write("                                <option value=\"1971\" >1971</option>\n");
      out.write("                                <option value=\"1970\" >1970</option>\n");
      out.write("                                <option value=\"1969\" >1969</option>\n");
      out.write("                                <option value=\"1968\" >1968</option>\n");
      out.write("                                <option value=\"1967\" >1967</option>\n");
      out.write("                                <option value=\"1966\" >1966</option>\n");
      out.write("                                <option value=\"1965\" >1965</option>\n");
      out.write("                                <option value=\"1964\" >1964</option>\n");
      out.write("                                <option value=\"1963\" >1963</option>\n");
      out.write("                                <option value=\"1962\" >1962</option>\n");
      out.write("                                <option value=\"1961\" >1961</option>\n");
      out.write("                                <option value=\"1960\" >1960</option>\n");
      out.write("                                <option value=\"1959\" >1959</option>\n");
      out.write("                                </select></td>\n");
      out.write("        </tr>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <tr>\n");
      out.write("            <td><font color=\"DarkGreen\"><b>GENDER</b></font>\n");
      out.write("         <td>\n");
      out.write("         <font color=\"DarkGreen\">MALE<input type =\"radio\" name =\"gender\" value=\"male\"></font>\n");
      out.write("         <font color=\"DarkGreen\">FEMALE<input type =\"radio\" name=\"gender\" value=\"female\"></font>\n");
      out.write("         </td>\n");
      out.write("         </tr>\n");
      out.write("            \n");
      out.write("        <tr>\n");
      out.write("            <td><font color=\"DarkGreen\" width=\"20%\" ><b>CONTACT NO.</b></font></td>\n");
      out.write("            <td><input type=\"number\" name =\"contact\" required=\"required\"></td> \n");
      out.write("        </tr>    \n");
      out.write("      \n");
      out.write("        \n");
      out.write("        <tr>\n");
      out.write("            <td><font color=\"DarkGreen\" width=\"20%\"><b>EMAIL ADDRESS</b></font></td>\n");
      out.write("            <td><input type=\"email\" name =\"email\" required=\"required\"></td> \n");
      out.write("        </tr> \n");
      out.write("        \n");
      out.write("        <tr>\n");
      out.write("            <td><font color=\"DarkGreen\" width=\"20%\"><b>CHOOSE PASSWORD &nbsp;&nbsp;</b></font></td>\n");
      out.write("            <td><input type=\"password\" name =\"pwd\" required=\"required\"></td> \n");
      out.write("        </tr> \n");
      out.write("        \n");
      out.write("        \n");
      out.write("         <tr>\n");
      out.write("        <td></td><td></td>\n");
      out.write("         </tr>\n");
      out.write("        <tr>\n");
      out.write("        <td></td>\n");
      out.write("        <td>\n");
      out.write("        <input type =\"submit\" value =\"Submit\" class=\"but\" id=\"regi\">&nbsp;&nbsp;<input type=\"reset\" value=\"Reset\" class=\"but\">\n");
      out.write("        </td>\n");
      out.write("        </tr>  \n");
      out.write("       \n");
      out.write("    \n");
      out.write("    </font>\n");
      out.write("    </table>\n");
      out.write("        \n");
      out.write("</form>\n");
      out.write("        </div>\n");
      out.write("            </div>\n");
      out.write(" ");

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
               String approve="-";
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
    
    
    
      out.write("\n");
      out.write("</center>\n");
      out.write("    ");
      out.write("<div id=\"footer\" class=\"footer\">\t\t<!-- footer div open -->\n");
      out.write("\n");
      out.write("<div style=\"float:left; height:100%; width:42%;\">\n");
      out.write("<pre style=\"padding-top:6px;font-size:15px; color:#FFFFFF;\">Copyright 2018-19 Blood Donation , All Rights Reserved.</pre>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div id=followf>\t\t\t\t\t\t\t\t\t\t\t<!-- Follow open -->\n");
      out.write("\n");
      out.write("<a href=\"https://m.facebook.com/\" > <img src=\"image/fb1.png\" class=icons2 /> </a>\n");
      out.write("<a href=\"https://www.instagram.com/\" > <img src=\"image/insta.png\" class=icons2 /> </a>\n");
      out.write("<a href=\"https://www.gmail.com/\" > <img src=\"image/26.jpg\" class=icons2 /> </a>\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\t\t\t\t<!-- Follow close -->\n");
      out.write("\n");
      out.write("</div>\t\t\t\t<!-- footer div close -->\n");
      out.write("\n");
      out.write("   \n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
