<%-- 
    Document   : registrationAction
    Created on : Oct 27, 2020, 2:10:01 PM
    Author     : xarro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="myBeans.DBConnect"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <%@include file="header.jsp"%>
  </head>
  <body>
    <%
      DBConnect dbConnect = new DBConnect();
      String first = request.getParameter("first");
      String last = request.getParameter("last");
      String email = request.getParameter("email");
      String pass = request.getParameter("pwd");
      String rType = "customer";
      String sql = "insert into user values (0, '" + first + "', "
                  + "'" + last + "', '" + email + "', '" + pass + "', '" + rType + "')"; 
      dbConnect.insertData(sql);
      sql = "select userid from user";
      int lastID = dbConnect.getLastNum(sql);
      sql = "insert into customer values (0, '" + lastID + "', 0)";
      dbConnect.insertData(sql);
      out.println("<h2>Welcome " + first + " " + last + ". Your email is " + email + "</h2>");
      response.sendRedirect("login.jsp?Registration_Successful");
    %>
    <%@include file="footer.jsp"%>
  </body>
</html>
