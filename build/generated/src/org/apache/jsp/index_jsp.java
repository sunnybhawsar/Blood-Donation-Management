package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\n");
      out.write("<title>Blood Donation</title>\n");
      out.write("\n");
      out.write("<link type=\"text/css\" rel=\"stylesheet\" href=\"css.css\" media=\"screen\" />\n");
      out.write(" \n");
      out.write("\n");
      out.write("<style type=\"text/css\">\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"jquery.js\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("$(document).ready(function(){\n");
      out.write("    $(\"#donor_div\").hide();\n");
      out.write("    \n");
      out.write("    $(\"#search\").click(function(){\n");
      out.write("        $(\"#donor_div\").slideDown(500);\n");
      out.write("        \n");
      out.write("        var loc=$(\"#location\").val();\n");
      out.write("        var blood=$(\"#bloodg\").val();\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        $.post(\"search_donor.jsp\",{location:loc,bloodg:blood},function(data){\n");
      out.write("            $(\"#donor_tab\").html(data);\n");
      out.write("            $(\"#lcn\").html(loc);\n");
      out.write("            $(\"#grp\").html(\" , \"+blood);\n");
      out.write("        });\n");
      out.write("        \n");
      out.write("    });\n");
      out.write("    \n");
      out.write("    $(\"#close\").click(function(){\n");
      out.write("        $(\"#donor_div\").slideUp(200);\n");
      out.write("    });\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<div id=\"back\">\n");
      out.write("\n");
      out.write(" ");
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
      out.write("                                                                       <!-- Menu -->\n");
      out.write("                                                                       \n");
      out.write("                                                                       <!-- Body -->\n");
      out.write("    \n");
      out.write("    \n");
      out.write("     <div class=\"check\">\n");
      out.write("         \n");
      out.write("         <center>\n");
      out.write("         <div style=\"height:230px; width:50%;\">\n");
      out.write("         <img src='image/images (7).jpg' style=\"height:100%; width:100%;\" />\n");
      out.write("         </div>\n");
      out.write("         </center>\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("     <center>                                                                 \n");
      out.write("     <div class=\"main\">\n");
      out.write("         \n");
      out.write("         <div style=\"height:230px; width:35%; border:lightslategray  groove 4px; float:right; margin-top:40px; margin-right:5%; overflow:hidden;\">\n");
      out.write("            \n");
      out.write("                 <div style=\"width:100%; height:35px; \">\n");
      out.write("                 <center><h2 style=\"padding-top:0px; font-size:28px; margin-top:0px; margin-right:5%; color:darkred;\">Blood Requests</h2></center>\n");
      out.write("                 </div>\n");
      out.write("                 \n");
      out.write("                 <div style=\"width:100%; height:90%; overflow:scroll;\">\n");
      out.write("                  <!--   <marquee direction=\"up\"> -->\n");
      out.write("                  <!--  <marquee direction=\"up\" onMouseOver=\"this.stop();\" onMouseOut=\"this.start();\"> -->\n");
      out.write("                  <br>\n");
      out.write("                  <table>\n");
      out.write("                     \n");
      out.write("                    \n");
      out.write("                     ");

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
                
          
               
                
      out.println(" <tr style='font-size:20px;'><td> "+city+" &nbsp;</td><td>|&nbsp; "+bloodgrp+"  </td><td>| &nbsp; "+day+" "+month+" "+year+"</td> <td>&nbsp;&nbsp;&nbsp;&nbsp; <a href="+"more_blood_request.jsp?bid="+id+""+"><u>More</u></a></td></tr>");
              }
                    }
                    catch(Exception e){
                        out.println(e);
                    }
                    


 
                     
      out.write("\n");
      out.write("                 \n");
      out.write("                     \n");
      out.write("                 </table>\n");
      out.write("                   <!-- </marquee> -->\n");
      out.write("                  </div>\n");
      out.write("            \n");
      out.write("         </div>\n");
      out.write("         \n");
      out.write("         <div style=\"height:300px; width:30%;  float:right; margin-top:10px; margin-right:15%; overflow:hidden;\">\n");
      out.write("             <br><br>\n");
      out.write("             <center><h1 style=\"color:darkred;\">Search a Blood Donor</h1></center>\n");
      out.write("             <form id=\"frm\" name=\"frm\">\n");
      out.write("             <pre style=\"font-size:22px;\">Location : <select id=\"location\" name=\"location\">\n");
      out.write("                         <option value=\" \">select</option>\n");
      out.write("                         <option>Indore</option>\n");
      out.write("                         <option>Ujjain</option>\n");
      out.write("                         <option>Dewas</option>\n");
      out.write("                         <option>Bhopal</option>\n");
      out.write("                         <option>Ratlam</option>\n");
      out.write("                         </select></pre>\n");
      out.write("             <pre style=\"font-size:22px;\">Blood Group : <select id=\"bloodg\" name=\"bloodg\">\n");
      out.write("                         <option value=\" \">select</option>\n");
      out.write("                                <option value=\"A+\" >A+</option>\n");
      out.write("                                <option value=\"A-\" >A-</option>\n");
      out.write("                                <option value=\"B+\" >B+</option>\n");
      out.write("                                <option value=\"B-\" >B-</option>\n");
      out.write("                                <option value=\"O+\" >O+</option>\n");
      out.write("                                <option value=\"O-\" >O-</option>\n");
      out.write("                                <option value=\"AB+\" >AB+</option>\n");
      out.write("                                <option value=\"AB-\" >AB-</option>\n");
      out.write("                                </select></pre>\n");
      out.write("         \n");
      out.write("         <input type=\"button\" value=\"Search\" class=\"but\" id=\"search\"/>\n");
      out.write("             </form>\n");
      out.write("         </div>\n");
      out.write("         \n");
      out.write("         </div>\n");
      out.write("                                                                     \n");
      out.write("                                                                       <!-- Main div close -->     \n");
      out.write("     \n");
      out.write("        <div class=\"donor\" id=\"donor_div\" style=\"height:320px;\">\n");
      out.write("            <center>\n");
      out.write("                <h2 style=\"margin-left:14%;\">Blood Donors <span style=\"float:right; color:darkred; margin-right:7%;\" id=\"grp\"></span><span style=\"float:right; color:darkred;\" id=\"lcn\"></span></h2>\n");
      out.write("            \n");
      out.write("            <div class=\"donor_table\" id=\"donor_tab\" style=\"width:90%; height:220px; overflow:scroll;\">\n");
      out.write("            </div>\n");
      out.write("                <pre id=\"close\" style=\"float:right; color:darkblue; margin-right:20px;\"><b>Close</b></pre>\n");
      out.write("            </center>\n");
      out.write("        </div>        \n");
      out.write("        \n");
      out.write("                                                                       \n");
      out.write("        </center>\n");
      out.write("                                                                       \n");
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
      out.write("\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("\n");
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
