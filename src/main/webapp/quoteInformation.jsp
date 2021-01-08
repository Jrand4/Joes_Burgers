<%-- 
    Document   : costCalculator
    Created on : Oct 4, 2020, 2:16:18 PM
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
    <h1>Request A Quote</h1>
    <form action="quoteAction.jsp">
      <div class="form-group">
        <label for="firstname">First Name:</label>
        <input type="text" class="form-control" placeholder="Enter First Name" id="firstname" required>
      </div>
      <div class="form-group">
        <label for="lastname">Last Name:</label>
        <input type="text" class="form-control" placeholder="Enter Last Name" id="lastname" required>
      </div>
      <div class="form-group">
        <label for="email">Email address:</label>
        <input type="email" class="form-control" placeholder="Enter email" id="email" required>
      </div>
      <div class="form-group">
        <label>State:</label>
        <select name="state" required>
          <option value="" disabled selected>State</option>
          <option value="MA">MA</option>
          <option value="NH">NH</option>
          <option value="VT">VT</option>
        </select>  
      </div>
      <div class="form-group">
        <label for="joblocation">Job Address:</label>
        <input type="text" class="form-control" placeholder="Enter Job Address" id="joblocation" required>
      </div>
      <div class="form-group">
        <label for="completiondate">Completion Date:</label>
        <input type="date" class="form-control" placeholder="Enter Completion Date" id="completiondate" required>
      </div>
      <div class="form-group form-check">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox"> Installation
        </label>
      </div>
      <div class="form-group form-check">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox"> Repair
        </label>
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
      <button type="reset" class="btn btn-primary">Reset</button>
    </form>
    <%@include file="footer.jsp"%>
  </body>
</html>
