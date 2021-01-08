<%-- 
    Document   : logoutAction
    Created on : Dec 8, 2020, 5:08:00 PM
    Author     : xarro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
        <%
          session.setAttribute("userType", "None");
          session.setAttribute("userEmail", "None");        
        %> <jsp:forward page ="index.jsp"/> <%

    %>.
  </body>
</html>
