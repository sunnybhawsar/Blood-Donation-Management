<%@page import="java.sql.*;" %>

<%
   try{ String id=request.getParameter("id");
  Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor","root","");
                Statement st=con.createStatement(); 
                
    String sql="update toapprove set approval='Disapproved' where tid='"+id+"'";
    if(st.executeUpdate(sql)==1)
    {response.sendRedirect("admin_donor_request.jsp");}
    else
        out.println("Query fail");
   }
   catch(Exception e){
   out.println(e);}

%>