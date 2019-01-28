<%@page import="java.sql.*;" %>
<%
String name=request.getParameter("name").toString();
String mail=request.getParameter("mail").toString();
String msg=request.getParameter("msg").toString();

String z="";


  try
        {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbblooddonor","root","");
                Statement st=con.createStatement();
                
                String qry="insert into feedback values('0','"+name+"','"+mail+"','"+msg+"')";
              
                if(st.executeUpdate(qry)==1)
                {
                z="Message Sent";
                }
                else
                {
                z="Error!";
                }
                
                out.println(z);                      
        }
        catch(Exception ee)
        {
        out.println("Error : "+ee.getMessage());
        }


%>
