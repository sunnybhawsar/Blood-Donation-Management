<%@page import="java.sql.*;" %>

<%
String id=request.getParameter("id");

  try
        {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor","root","");
                Statement st=con.createStatement();
                
                String name,address,location,bloodgrp,gender,month,mobile,status,email,pwd;
                int day,year,bid;
                name=address=location=bloodgrp=gender=month=mobile=email=pwd=null;
                status="Available";
                day=year=bid=0;
                String sql="select * from toapprove where tid='"+id+"'";
                 ResultSet rs=null;
                 rs=st.executeQuery(sql);
                 
                 while(rs.next()){
                  email=rs.getString("email_id");
                  pwd=rs.getString("password");
                 name=rs.getString("name");
                 address=rs.getString("address");
                 location=rs.getString("location");
                 bloodgrp=rs.getString("bloodgrp");
                 gender=rs.getString("gender");
                 month=rs.getString("month");
                 day=rs.getInt("day");
                 year=rs.getInt("year");
                 mobile=rs.getString("mobile");
                 }
                 int lid=0;
                 String log="insert into login(email,password) values('"+email+"','"+pwd+"')";
                 st.executeUpdate(log);
                 String get="select id from login where email='"+email+"' and password='"+pwd+"'";
                
                 ResultSet gs=null;
                  gs=st.executeQuery(get);
                 while(gs.next()){
                  lid=gs.getInt("id");
                   }
                 
                 
                 
                 
                 
                 String qry="insert into blood_donors values('"+bid+"','"+name+"','"+bloodgrp+"','"+location+"','"+address+"','"+day+"','"+month+"','"+year+"','"+gender+"','"+mobile+"','"+status+"','"+lid+"','"+id+"')";
                 
                        
                 
                
                
               if(st.executeUpdate(qry)==1)
                {
                 String a="update toapprove set approval='Approved' where tid="+id+"";
                 st.executeUpdate(a);
                response.sendRedirect("admin_donor_request.jsp");
                }
                else
                {
               
                }
                
                                    
        }
        catch(Exception ee)
        {
        out.println("Error : "+ee.getMessage());
        }








%>