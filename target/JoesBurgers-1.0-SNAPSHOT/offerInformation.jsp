<%-- 
    Document   : offerInformation
    Created on : Oct 4, 2020, 2:15:45 PM
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
    <h1>Offer Information</h1>
    <div class="container">           
      <table class="table">
        <thead>
          <tr>
            <th>Type Of Rock</th>
            <th>Sizes</th>
            <th>Description</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>White</td>
            <td>1/4,1/2,5/8</td>
            <td>The standard drywall used for most walls</td>
          </tr>
          <tr>
            <td>Green</td>
            <td>1/2,5/8</td>
            <td>Moisture resistant, used in bathrooms and kitchens.</td>
          </tr>
          <tr>
            <td>Red</td>
            <td>1/2,5/8</td>
            <td>Fire resistant, can withstand 1 hour of fires, used in garages.</td>
          </tr>
        </tbody>
      </table>
    </div>
    <%@include file="footer.jsp"%>
  </body>
</html>
