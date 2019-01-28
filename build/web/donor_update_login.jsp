<%-- 
    Document   : donor_update_login
    Created on : 1 Apr, 2018, 1:22:38 PM
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

<%
String qry="update blood_donors set";
%>