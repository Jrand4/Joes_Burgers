<%-- 
    Document   : buildYourOwnAction
    Created on : Nov 18, 2020, 12:16:25 PM
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
    <%      DBConnect dbConnect = new DBConnect();
      String meat = (request.getParameter("meat").equals("None")) ? "None" : request.getParameter("meat") + request.getParameter("meatType");

      String bName = (request.getParameter("bacon").equals("None")) ? "" : "Bacon ";
      String mName = (request.getParameter("meat").equals("None") || request.getParameter("meat").equals("Single")) ? "" : request.getParameter("meat") + " ";
      String cName = (request.getParameter("cheese").equals("None")) ? "" : "Cheese";
      String tName = (request.getParameter("meatType").equals("Beef")) ? "Burger" : "Chicken Sandwich";
      String name = bName + mName + cName + tName;

      String bunID = dbConnect.getFoodIDFromFoodName("select bunid from bun where bunname like '" + request.getParameter("bun") + "'");
      String meatID = dbConnect.getFoodIDFromFoodName("select meatid from meat where meatName like '" + meat + "'");
      String baconID = dbConnect.getFoodIDFromFoodName("select meatid from meat where meatName like '" + request.getParameter("bacon") + "'");
      String cheeseID = dbConnect.getFoodIDFromFoodName("select cheeseid from cheese where cheesename like '" + request.getParameter("cheese") + "'");
      String lettuceID = dbConnect.getFoodIDFromFoodName("select veggieid from veggie where veggiename like '" + request.getParameter("lettuce") + "'");
      String tomatoID = dbConnect.getFoodIDFromFoodName("select veggieid from veggie where veggiename like '" + request.getParameter("tomatoes") + "'");
      String onionID = dbConnect.getFoodIDFromFoodName("select veggieid from veggie where veggiename like '" + request.getParameter("onion") + "'");
      String picklesID = dbConnect.getFoodIDFromFoodName("select veggieid from veggie where veggiename like '" + request.getParameter("pickles") + "'");

      String bunCost = request.getParameter("bunCost");
      String meatCost = request.getParameter("meatCost");
      String baconCost = request.getParameter("baconCost");
      String cheeseCost = request.getParameter("cheeseCost");
      String lettuceCost = request.getParameter("lettuceCost");
      String tomatoesCost = request.getParameter("tomatoesCost");
      String onionCost = request.getParameter("onionCost");
      String picklesCost = request.getParameter("picklesCost");
      String totalCost = request.getParameter("totalCost");

      String orderID = "";
      if (session.getAttribute("orderID") == null) {
        dbConnect.insertData("insert into foodorder values(0,1,1,'NO','0.00')"); // Employee and customer keys here, test values at 1
        orderID = dbConnect.getData("select MAX(foodorder.foodorderid) from foodorder");
        session.setAttribute("orderID", orderID);
      } else {
        orderID = (session.getAttribute("orderID")).toString();
      }
      //out.println(orderID);

      String sql1 = "insert into item values (0, '" + name + "', '" + bunID + "', 1, '" + cheeseID + "')";
      dbConnect.insertData(sql1);
      String itemID = dbConnect.getData("select MAX(item.itemid) from item");
      //out.println(itemID);
      String sql2 = "insert into itemmeats values"
              + "(0, '" + itemID + "', '" + meatID + "')"
              + ",(0, '" + itemID + "', '" + baconID + "')";
      dbConnect.insertData(sql2);
      String sql3 = "insert into itemveggies values"
              + "(0, '" + itemID + "', '" + lettuceID + "')"
              + ",(0, '" + itemID + "', '" + tomatoID + "')"
              + ",(0, '" + itemID + "', '" + onionID + "')"
              + ",(0, '" + itemID + "', '" + picklesID + "')";
      dbConnect.insertData(sql3);
      String status = "Ordered";
      String sql4 = "insert into foodorderitems values(0,'" + orderID + "','" + itemID + "','" + totalCost + "','" + status + "')";
      dbConnect.insertData(sql4);
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
              + "WHERE foodorder.foodorderid = '" + orderID + "' "
              + "GROUP BY item.itemid";
      String sql6 = "Select foodorderitems.itemCost from foodorderitems where foodorderitems.foodorderid = " + orderID;
      float total = 0.00f;
      String totalString = "$";
      String[] orderItemCosts = dbConnect.getDataVector(sql6);
      for (int i = 0; i < orderItemCosts.length; i++) {
        total += Float.parseFloat(orderItemCosts[i].replaceAll("[^\\d.]", ""));
      }
      totalString = totalString + Float.toString(total);
      String sql7 = "update foodorder set total = '" + total + "' where foodorderID = '" + orderID + "'";
      dbConnect.insertData(sql7);
    %>
    <div class="container">
      <h1>Cart Contents:</h1>
      <%= dbConnect.htmlTable(sql5)%>
      Total : <%= totalString%>
    </div>
    <form name = "payform" action = "payOrderAction.jsp">
      <input type="submit" value="PAY">
    </form>

    <%@include file="footer.jsp"%>
  </body>
</html>
