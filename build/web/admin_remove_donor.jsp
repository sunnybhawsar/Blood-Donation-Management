<%@page import="java.sql.*"%>
<%
    
          try
          {
               String qry="delete from blood_donors where did='"+request.getParameter("tid")+"';";
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor","root","");
               Statement st=con.createStatement();
               String get="select id,ttid from blood_donors where did='"+request.getParameter("tid")+"';";
               
               ResultSet rs=st.executeQuery(get);int lid=0; int ttid=0;
               while(rs.next()){
               lid=rs.getInt("id");
               ttid=rs.getInt("ttid");
               }
               out.println(lid);
               String rem="delete from login where id='"+lid+"';";
               String upp="update toapprove set approval='Disapproved' where tid="+ttid+"; ";
               if(st.executeUpdate(rem)==1)
               {
                   if(st.executeUpdate(qry)==1)
                   {
                   st.executeUpdate(upp);
                   response.sendRedirect("admin_blood_donors.jsp");
                   }
                   else
                   {
                   out.println("<br/><br/>Donor Item have error to delete");
                   }
                   }
               else
               {
                   out.println("<br/><br/>Login Item have error to delete");
               }

           }catch(Exception sb)
           {
               out.println("<br/><br/>Error is "+sb.getMessage().toString());
           }






%>