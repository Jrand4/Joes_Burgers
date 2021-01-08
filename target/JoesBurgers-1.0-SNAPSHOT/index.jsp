<%-- 
    Document   : index
    Created on : Oct 4, 2020, 11:48:59 AM
    Author     : xarro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="validation.js"></script>
    <title>JSP Page</title>
    <% if(session.getAttribute("userType") == null) session.setAttribute("userType","None"); %>
    <%@include file="header.jsp"%>
  </head>
  <body>

    <%@include file="footer.jsp"%>
  </body>
</html>
