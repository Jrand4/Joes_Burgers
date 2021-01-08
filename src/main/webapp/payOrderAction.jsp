<%-- 
    Document   : payOrderAction
    Created on : Dec 8, 2020, 5:24:40 PM
    Author     : xarro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="myBeans.DBConnect"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
    <%
      DBConnect dbConnect = new DBConnect();
      String orderID = session.getAttribute("orderID").toString();
      String sql = "update foodorder set paid = '" + "YES" + "' where foodorderID = '" + orderID + "'";
      dbConnect.insertData(sql);
      session.setAttribute("orderID", null);
      %> <jsp:forward page ="index.jsp"/> <%
      %>
  </body>
</html>
