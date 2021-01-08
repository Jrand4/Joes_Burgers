<%-- 
    Document   : register
    Created on : Dec 8, 2020, 4:27:34 PM
    Author     : xarro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="validation.js"></script>
    <title>JSP Page</title>
    <%@include file="header.jsp"%>
  </head>
  <body>
    <h1> Please Register on form below : </h1>
    <form name = "registration" action = "registrationAction.jsp">
      <table border="10" cellspacing="5" cellpadding="5">
        <tbody>
          <tr>
            <td>Firstname</td>
            <td><input type="text" name="first" value="" size="50" required=""/></td>
          </tr>
          <tr>
            <td>Lastname</td>
            <td><input type="text" name="last" value="" size="50" required/></td>
          </tr>
          <tr>
            <td>Email</td>
            <td><input type="email" name="email" value="" size="50" required/></td>
          </tr>
          <tr>
            <td>Password</td>
            <td><input type="password" id="password1" name="pwd" value="" size="50" 
                       required  oninput="validatePassword()" /></td>
          </tr>
          <tr>
            <td>Confirm Password</td>
            <td><input type="password" id="password2" name="pwd2" value="" size="50"
                       required  oninput="validatePasswordConfirmation()" /></td>
          </tr>
          <tr>
            <td><input type="reset" value="Reset"></td>
            <td><input type="submit" value="Submit"></td>
          </tr>
        </tbody>
      </table>
    </form>
    <%@include file="footer.jsp"%>
  </body>
</html>
