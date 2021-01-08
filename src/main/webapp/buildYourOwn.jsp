<%-- 
    Document   : costInformation
    Created on : Oct 4, 2020, 2:16:02 PM
    Author     : xarro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="myBeans.DBConnect"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <script src="menuSelection.js"></script>
    <%@include file="header.jsp"%>
  </head>
  <body>
    <%    
      try {
        if (!session.getAttribute("userType").equals("customer")) {
    %> <jsp:forward page ="index.jsp"/> <%
      }
    } catch (Exception ex) {
    %> <jsp:forward page ="index.jsp"/> <%
      }
      DBConnect dbConnect = new DBConnect();
      String[] bunCosts = dbConnect.getDataVector("Select buncost from bun");
      String[] meatCosts = dbConnect.getDataVector("Select meatCost from meat");
      String[] cheeseCosts = dbConnect.getDataVector("Select cheeseCost from cheese");
      String[] veggieCosts = dbConnect.getDataVector("Select veggieCost from veggie");
    %>
    
    
    <div class="container">
      <div class='text-center'> <h1 >Build your own burger!</h1> </div>
      <form name = BuildFood onreset="ResetPictures()" action = "buildYourOwnAction.jsp">
        <div class="form-group">
          <h3>Bun:</h3>
          <img src="img/None.png" class="img-thumbnail" id="bunPic" alt="None"/>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input active" id="noBun" name="bun" value="None" onclick="UpdateBunPicture([<%=bunCosts[0]%>,<%=bunCosts[1]%>,<%=bunCosts[2]%>,<%=bunCosts[3]%>])"/>
            <label class="custom-control-label" for="noBun">None</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="sesame" name="bun" value="Sesame" onclick="UpdateBunPicture([<%=bunCosts[0]%>,<%=bunCosts[1]%>,<%=bunCosts[2]%>,<%=bunCosts[3]%>])"/>
            <label class="custom-control-label" for="sesame">Sesame</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="brioche" name="bun" value="Brioche" onclick="UpdateBunPicture([<%=bunCosts[0]%>,<%=bunCosts[1]%>,<%=bunCosts[2]%>,<%=bunCosts[3]%>])"/>
            <label class="custom-control-label" for="brioche">Brioche</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="pretzel" name="bun" value="Pretzel" onclick="UpdateBunPicture([<%=bunCosts[0]%>,<%=bunCosts[1]%>,<%=bunCosts[2]%>,<%=bunCosts[3]%>])"/>
            <label class="custom-control-label" for="pretzel">Pretzel</label>
          </div>
          <br>Bun Cost
          <input class="form-control" type="text" id="bunCost" name="bunCost" value="$0.00" readonly onchange="UpdateTotalCost()">
        </div>

        <div class="form-group">
          <h3>Meat:</h3>
          <img src="img/None.png" class="img-thumbnail" id="meatPic" alt="None"/>
          <select class="w3-select w3-border" id="meatType" name="meatType" required onchange="UpdateMeatPicture([<%=meatCosts[0]%>,<%=meatCosts[1]%>,<%=meatCosts[2]%>,<%=meatCosts[3]%>,<%=meatCosts[4]%>,<%=meatCosts[5]%>,<%=meatCosts[6]%>])">
            <option value="" disabled selected>Choose Meat</option>
            <option value="Beef">Beef</option>
            <option value="Chicken">Chicken</option>
          </select>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="noMeat" name="meat" value="None" onclick="UpdateMeatPicture([<%=meatCosts[0]%>,<%=meatCosts[1]%>,<%=meatCosts[2]%>,<%=meatCosts[3]%>,<%=meatCosts[4]%>,<%=meatCosts[5]%>,<%=meatCosts[6]%>])"/>
            <label class="custom-control-label" for="noMeat">None</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="single" name="meat" value="Single" onclick="UpdateMeatPicture([<%=meatCosts[0]%>,<%=meatCosts[1]%>,<%=meatCosts[2]%>,<%=meatCosts[3]%>,<%=meatCosts[4]%>,<%=meatCosts[5]%>,<%=meatCosts[6]%>])"/>
            <label class="custom-control-label" for="single">Single</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="double" name="meat" value="Double" onclick="UpdateMeatPicture([<%=meatCosts[0]%>,<%=meatCosts[1]%>,<%=meatCosts[2]%>,<%=meatCosts[3]%>,<%=meatCosts[4]%>,<%=meatCosts[5]%>,<%=meatCosts[6]%>])"/>
            <label class="custom-control-label" for="double">Double</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="triple" name="meat" value="Triple" onclick="UpdateMeatPicture([<%=meatCosts[0]%>,<%=meatCosts[1]%>,<%=meatCosts[2]%>,<%=meatCosts[3]%>,<%=meatCosts[4]%>,<%=meatCosts[5]%>,<%=meatCosts[6]%>])"/>
            <label class="custom-control-label" for="triple">Triple</label>
          </div>
          <br>Meat Cost
          <input class="form-control" type="text" id="meatCost" name="meatCost" value="$0.00" readonly onchange="UpdateTotalCost()">
        </div>

        <div class="form-group">
          <img src="img/None.png" class="img-thumbnail" id="baconPic" alt="None"/>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="noBacon" name="bacon" value="None" onclick="UpdateBaconPicture([<%=meatCosts[0]%>,<%=meatCosts[7]%>,<%=meatCosts[8]%>])"/>
            <label class="custom-control-label" for="noBacon">No Bacon</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="bacon" name="bacon" value="Bacon" onclick="UpdateBaconPicture([<%=meatCosts[0]%>,<%=meatCosts[7]%>,<%=meatCosts[8]%>])"/>
            <label class="custom-control-label" for="bacon">Add Bacon</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="baconExtra" name="bacon" value="ExtraBacon" onclick="UpdateBaconPicture([<%=meatCosts[0]%>,<%=meatCosts[7]%>,<%=meatCosts[8]%>])"/>
            <label class="custom-control-label" for="baconExtra">Add Extra Bacon</label>
          </div>
          <br>Bacon Cost
          <input class="form-control" type="text" id="baconCost" name="baconCost" value="$0.00" readonly onchange="UpdateTotalCost()">
        </div>
        <h3>Cheese:</h3>
        <div class="form-group">
          <img src="img/None.png" class="img-thumbnail" id="cheesePic" alt="None"/>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="noCheese" name="cheese" value="None" onclick="UpdateCheesePicture([<%=cheeseCosts[0]%>,<%=cheeseCosts[1]%>,<%=cheeseCosts[2]%>,<%=cheeseCosts[3]%>])"/>
            <label class="custom-control-label" for="noCheese">No Cheese</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="cheese" name="cheese" value="Cheese" onclick="UpdateCheesePicture([<%=cheeseCosts[0]%>,<%=cheeseCosts[1]%>,<%=cheeseCosts[2]%>,<%=cheeseCosts[3]%>])"/>
            <label class="custom-control-label" for="cheese">Add Cheese</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="doubleCheese" name="cheese" value="DoubleCheese" onclick="UpdateCheesePicture([<%=cheeseCosts[0]%>,<%=cheeseCosts[1]%>,<%=cheeseCosts[2]%>,<%=cheeseCosts[3]%>])"/>
            <label class="custom-control-label" for="doubleCheese">Add Double Cheese</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="tripleCheese" name="cheese" value="TripleCheese" onclick="UpdateCheesePicture([<%=cheeseCosts[0]%>,<%=cheeseCosts[1]%>,<%=cheeseCosts[2]%>,<%=cheeseCosts[3]%>])"/>
            <label class="custom-control-label" for="tripleCheese">Add Triple Cheese</label>
          </div>
          <br>Cheese Cost
          <input class="form-control" type="text" id="cheeseCost" name="cheeseCost" value="$0.00" readonly onchange="UpdateTotalCost()">
        </div>
        <h3>Veggies:</h3>
        <div class="form-group">
          <img src="img/None.png" class="img-thumbnail" id="lettucePic" alt="None"/>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="noLettuce" name="lettuce" value="None" onclick="UpdateLettucePicture([<%=veggieCosts[0]%>,<%=veggieCosts[7]%>,<%=veggieCosts[8]%>])"/>
            <label class="custom-control-label" for="noLettuce">No Lettuce</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="lettuce" name="lettuce" value="Lettuce" onclick="UpdateLettucePicture([<%=veggieCosts[0]%>,<%=veggieCosts[7]%>,<%=veggieCosts[8]%>])"/>
            <label class="custom-control-label" for="lettuce">Add Lettuce</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="lettuceExtra" name="lettuce" value="ExtraLettuce" onclick="UpdateLettucePicture([<%=veggieCosts[0]%>,<%=veggieCosts[7]%>,<%=veggieCosts[8]%>])"/>
            <label class="custom-control-label" for="lettuceExtra">Add Extra Lettuce</label>
          </div>
          <br>Lettuce Cost
          <input class="form-control" type="text" id="lettuceCost" name="lettuceCost" value="$0.00" readonly onchange="UpdateTotalCost()">
        </div>

        <div class="form-group">
          <img src="img/None.png" class="img-thumbnail" id="tomatoPic" alt="None"/>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="noTomatoes" name="tomatoes" value="None" onclick="UpdateTomatoPicture([<%=veggieCosts[0]%>,<%=veggieCosts[5]%>,<%=veggieCosts[6]%>])"/>
            <label class="custom-control-label" for="noTomatoes">No Tomatoes</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="tomatoes" name="tomatoes" value="Tomatoes" onclick="UpdateTomatoPicture([<%=veggieCosts[0]%>,<%=veggieCosts[5]%>,<%=veggieCosts[6]%>])"/>
            <label class="custom-control-label" for="tomatoes">Add Tomatoes</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="tomatoesExtra" name="tomatoes" value="ExtraTomatoes" onclick="UpdateTomatoPicture([<%=veggieCosts[0]%>,<%=veggieCosts[5]%>,<%=veggieCosts[6]%>])"/>
            <label class="custom-control-label" for="tomatoesExtra">Add Extra Tomatoes</label>
          </div>
          <br>Tomatoes Cost
          <input class="form-control" type="text" id="tomatoesCost" name="tomatoesCost" value="$0.00" readonly onchange="UpdateTotalCost()">
        </div>

        <div class="form-group">
          <img src="img/None.png" class="img-thumbnail" id="onionPic" alt="None"/>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="noOnion" name="onion" value="None" onclick="UpdateOnionPicture([<%=veggieCosts[0]%>,<%=veggieCosts[3]%>,<%=veggieCosts[4]%>])"/>
            <label class="custom-control-label" for="noOnion">No Onion</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="onion" name="onion" value="Onions" onclick="UpdateOnionPicture([<%=veggieCosts[0]%>,<%=veggieCosts[3]%>,<%=veggieCosts[4]%>])"/>
            <label class="custom-control-label" for="onion">Add Onion</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="onionExtra" name="onion" value="ExtraOnions" onclick="UpdateOnionPicture([<%=veggieCosts[0]%>,<%=veggieCosts[3]%>,<%=veggieCosts[4]%>])"/>
            <label class="custom-control-label" for="onionExtra">Add Extra Onion</label>
          </div>
          <br>Onion Cost
          <input class="form-control" type="text" id="onionCost" name="onionCost" value="$0.00" readonly onchange="UpdateTotalCost()">
        </div>

        <div class="form-group">
          <img src="img/None.png" class="img-thumbnail" id="picklesPic" alt="None"/>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="noPickles" name="pickles" value="None" onclick="UpdatePicklesPicture([<%=veggieCosts[0]%>,<%=veggieCosts[1]%>,<%=veggieCosts[2]%>])"/>
            <label class="custom-control-label" for="noPickles">No Pickles</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="pickles" name="pickles" value="Pickles" onclick="UpdatePicklesPicture([<%=veggieCosts[0]%>,<%=veggieCosts[1]%>,<%=veggieCosts[2]%>])"/>
            <label class="custom-control-label" for="pickles">Add Pickles</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="picklesExtra" name="pickles" value="ExtraPickles" onclick="UpdatePicklesPicture([<%=veggieCosts[0]%>,<%=veggieCosts[1]%>,<%=veggieCosts[2]%>])"/>
            <label class="custom-control-label" for="picklesExtra">Add Extra Pickles</label>
          </div>
          <br>Pickles Cost
          <input class="form-control" type="text" id="picklesCost" name="picklesCost" value="$0.00" readonly onchange="UpdateTotalCost()">
        </div>

        <div class="form-group">
          <br><br><br>
          <br>Total Cost
          <input class="form-control" type="text" id="totalCost" name="totalCost" value="$0.00" readonly>
        </div>
            
            <input type="reset" value="Reset">
            <input type="submit" value="Add To Cart">
      </form>
    </div>
    <%@include file="footer.jsp"%>
  </body>
</html>
