<%-- 
    Document   : orderQueue
    Created on : Dec 8, 2020, 5:15:21 PM
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

      String sql5 = "SELECT foodorder.foodorderid, item.itemId, item.itemName, bun.bunname, GROUP_CONCAT(DISTINCT meat.meatName)"
              + " AS meats, cheese.cheesename, sauce.saucename, GROUP_CONCAT(DISTINCT veggie.veggiename) AS veggies, foodorderitems.itemCost COST FROM meat "
              + "inner join itemmeats on meat.meatid = itemmeats.meatid "
              + "inner join item on itemmeats.itemid = item.itemId "
              + "inner join itemveggies on itemveggies.itemid = item.itemId "
              + "inner join veggie on veggie.veggieid = itemveggies.veggieid "
              + "inner join bun on bun.bunid = item.bunid "
              + "inner join cheese on cheese.cheeseid = item.cheeseid "
              + "inner join sauce on sauce.sauceid = item.sauceid "
              + "inner join foodorderitems on foodorderitems.itemid = item.itemId "
              + "inner join foodorder on foodorder.foodorderid = foodorderitems.foodorderid "
              + "WHERE foodorderitems.status = '" + "Ordered" + "' AND foodorder.paid = 'YES' "
              + "GROUP BY item.itemid";
    %>
    <div class="container">
      <h1>Order Queue:</h1>
    <%= dbConnect.htmlTable(sql5)%>
    </div>
    
            
    <%@include file="footer.jsp"%>
  </body>
</html>
