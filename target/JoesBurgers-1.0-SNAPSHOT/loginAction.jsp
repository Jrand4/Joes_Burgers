<%-- 
    Document   : loginAction
    Created on : Dec 8, 2020, 4:36:25 PM
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
      String userEmail = request.getParameter("email");
      String password = request.getParameter("pwd");
      String userType;
      String sql = "select email, password from user where email = ? and password = ?";
      String sql2 = "select rank from user where email = '"
              + userEmail + "' and password = '" + password + "'";
      DBConnect dbConnect = new DBConnect();
      String[] validation = dbConnect.isPwdValid(sql, userEmail, password);

      out.println("<h2>" + validation[0] + "</h2>");
      if (!validation[0].substring(0, 6).equals("Error:")) {
        String uType = dbConnect.getUserType(sql2);
        if (!uType.equals("NONE")) {
          session.setAttribute("userType", uType);
          session.setAttribute("userEmail", userEmail);
            response.sendRedirect("index.jsp");
          }
        }
    
      else {
          response.sendRedirect("index.jsp?Error:"+validation[0]);
      }
    %>.
  </body>
</html>
