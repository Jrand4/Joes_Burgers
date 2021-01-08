<%-- 
    Document   : login
    Created on : Nov 12, 2020, 1:10:33 PM
    Author     : xarro
--%>

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
    <title>JSP Page</title>
    <%@include file="header.jsp"%>
  </head>
  <body>
    <h1> Please Login : </h1>
    <form name = "login" action = "loginAction.jsp">
      <table border="10" cellspacing="5" cellpadding="5">
        <tbody>
          <tr>
            <td>Email</td>
            <td><input type="email" name="email" value="" size="50" required/></td>
          </tr>
          <tr>
            <td>Password</td>
            <td><input type="password" id="password1" name="pwd" value="" size="50" 
                       required/></td>
          </tr>
          <tr>
            <td><input type="reset" value="Reset"></td>
            <td><input type="submit" value="Login"></td>
          </tr>
        </tbody>  
      </table>
      <a class="nav-link" href="register.jsp">Create Account</a>
    </form>
    <%@include file="footer.jsp"%>
  </body>
</html>

