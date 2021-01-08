/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function UpdateBunPicture(value) {
  var noBun = document.getElementById("noBun").checked;
  var bun1 = document.getElementById("sesame").checked;
  var bun2 = document.getElementById("brioche").checked;
  var bun3 = document.getElementById("pretzel").checked;
  if (noBun) {
    document.getElementById("bunPic").src = "img/None.png";
    document.getElementById("bunCost").value = "$" + value[0].toFixed(2);
  } else if (bun1) {
    document.getElementById("bunPic").src = "img/sesame.png";
    document.getElementById("bunCost").value = "$" + value[1].toFixed(2);
  } else if (bun2) {
    document.getElementById("bunPic").src = "img/brioche.png";
    document.getElementById("bunCost").value = "$" + value[2].toFixed(2);
  } else if (bun3) {
    document.getElementById("bunPic").src = "img/pretzel.png";
    document.getElementById("bunCost").value = "$" + value[3].toFixed(2);
  }
  UpdateTotalCost();
}

function UpdateMeatPicture(value) {
  var mType = document.getElementById("meatType").value;
  var noMeat = document.getElementById("noMeat").checked;
  var single = document.getElementById("single").checked;
  var double = document.getElementById("double").checked;
  var triple = document.getElementById("triple").checked;
  if (mType === "Beef") {
    if (single) {
      document.getElementById("meatPic").src = "img/beef1.png";
      document.getElementById("meatCost").value = "$" + value[1].toFixed(2);
    } else if (double) {
      document.getElementById("meatPic").src = "img/beef2.png";
      document.getElementById("meatCost").value = "$" + value[2].toFixed(2);
    } else if (triple) {
      document.getElementById("meatPic").src = "img/beef3.png";
      document.getElementById("meatCost").value = "$" + value[3].toFixed(2);
    } else if (noMeat) {
      document.getElementById("meatPic").src = "img/None.png";
      document.getElementById("meatCost").value = "$" + value[0].toFixed(2);
    }
  } else if (mType === "Chicken") {
    if (single) {
      document.getElementById("meatPic").src = "img/chicken1.png";
      document.getElementById("meatCost").value = "$" + value[4].toFixed(2);
    } else if (double) {
      document.getElementById("meatPic").src = "img/chicken2.png";
      document.getElementById("meatCost").value = "$" + value[5].toFixed(2);
    } else if (triple) {
      document.getElementById("meatPic").src = "img/chicken3.png";
      document.getElementById("meatCost").value = "$" + value[6].toFixed(2);
    } else if (noMeat) {
      document.getElementById("meatPic").src = "img/None.png";
      document.getElementById("meatCost").value = "$" + value[0].toFixed(2);
    }
  }
  UpdateTotalCost();
}

function UpdateBaconPicture(value) {
  var noBacon = document.getElementById("noBacon").checked;
  var bacon = document.getElementById("bacon").checked;
  var baconExtra = document.getElementById("baconExtra").checked;

  if (noBacon) {
    document.getElementById("baconPic").src = "img/None.png";
    document.getElementById("baconCost").value = "$" + value[0].toFixed(2);
  } else if (bacon) {
    document.getElementById("baconPic").src = "img/bacon.png";
    document.getElementById("baconCost").value = "$" + value[1].toFixed(2);
  } else if (baconExtra) {
    document.getElementById("baconPic").src = "img/baconExtra.png";
    document.getElementById("baconCost").value = "$" + value[2].toFixed(2);
  }
  UpdateTotalCost();
}

function UpdateCheesePicture(value) {
  var noCheese = document.getElementById("noCheese").checked;
  var cheese = document.getElementById("cheese").checked;
  var doubleCheese = document.getElementById("doubleCheese").checked;
  var tripleCheese = document.getElementById("tripleCheese").checked;

  if (noCheese) {
    document.getElementById("cheesePic").src = "img/None.png";
    document.getElementById("cheeseCost").value = "$" + value[0].toFixed(2);
  } else if (cheese) {
    document.getElementById("cheesePic").src = "img/cheese1.png";
    document.getElementById("cheeseCost").value = "$" + value[1].toFixed(2);
  } else if (doubleCheese) {
    document.getElementById("cheesePic").src = "img/cheese2.png";
    document.getElementById("cheeseCost").value = "$" + value[2].toFixed(2);
  } else if (tripleCheese) {
    document.getElementById("cheesePic").src = "img/cheese3.png";
    document.getElementById("cheeseCost").value = "$" + value[3].toFixed(2);
  }
  UpdateTotalCost();
}

function UpdateLettucePicture(value) {
  var noLettuce = document.getElementById("noLettuce").checked;
  var lettuce = document.getElementById("lettuce").checked;
  var lettuceExtra = document.getElementById("lettuceExtra").checked;
  if (noLettuce) {
    document.getElementById("lettucePic").src = "img/None.png";
    document.getElementById("lettuceCost").value = "$" + value[0].toFixed(2);
  } else if (lettuce) {
    document.getElementById("lettucePic").src = "img/lettuce.png";
    document.getElementById("lettuceCost").value = "$" + value[1].toFixed(2);
  } else if (lettuceExtra) {
    document.getElementById("lettucePic").src = "img/lettuceExtra.png";
    document.getElementById("lettuceCost").value = "$" + value[2].toFixed(2);
  }
  UpdateTotalCost();
}

function UpdateTomatoPicture(value) {
  var noTomatoes = document.getElementById("noTomatoes").checked;
  var tomatoes = document.getElementById("tomatoes").checked;
  var tomatoesExtra = document.getElementById("tomatoesExtra").checked;

  if (noTomatoes) {
    document.getElementById("tomatoPic").src = "img/None.png";
    document.getElementById("tomatoesCost").value = "$" + value[0].toFixed(2);
  } else if (tomatoes) {
    document.getElementById("tomatoPic").src = "img/tomatos.png";
    document.getElementById("tomatoesCost").value = "$" + value[1].toFixed(2);
  } else if (tomatoesExtra) {
    document.getElementById("tomatoPic").src = "img/tomatosExtra.png";
    document.getElementById("tomatoesCost").value = "$" + value[2].toFixed(2);
  }
  UpdateTotalCost();
}

function UpdateOnionPicture(value) {
  var noOnion = document.getElementById("noOnion").checked;
  var onion = document.getElementById("onion").checked;
  var onionExtra = document.getElementById("onionExtra").checked;

  if (noOnion) {
    document.getElementById("onionPic").src = "img/None.png";
    document.getElementById("onionCost").value = "$" + value[0].toFixed(2);
  } else if (onion) {
    document.getElementById("onionPic").src = "img/onions.png";
    document.getElementById("onionCost").value = "$" + value[1].toFixed(2);
  } else if (onionExtra) {
    document.getElementById("onionPic").src = "img/onionsExtra.png";
    document.getElementById("onionCost").value = "$" + value[2].toFixed(2);
  }
  UpdateTotalCost();
}

function UpdatePicklesPicture(value) {
  var noPickles = document.getElementById("noPickles").checked;
  var pickles = document.getElementById("pickles").checked;
  var picklesExtra = document.getElementById("picklesExtra").checked;

  if (noPickles) {
    document.getElementById("picklesPic").src = "img/None.png";
    document.getElementById("picklesCost").value = "$" + value[0].toFixed(2);
  } else if (pickles) {
    document.getElementById("picklesPic").src = "img/pickles.png";
    document.getElementById("picklesCost").value = "$" + value[1].toFixed(2);
  } else if (picklesExtra) {
    document.getElementById("picklesPic").src = "img/picklesExtra.png";
    document.getElementById("picklesCost").value = "$" + value[2].toFixed(2);
  }
  UpdateTotalCost();
}

function UpdateTotalCost(){
  var bunCost = parseFloat(document.getElementById("bunCost").value.toString().substring(1));
  var meatCost = parseFloat(document.getElementById("meatCost").value.toString().substring(1));
  var baconCost = parseFloat(document.getElementById("baconCost").value.toString().substring(1));
  var cheeseCost = parseFloat(document.getElementById("cheeseCost").value.toString().substring(1));
  var lettuceCost = parseFloat(document.getElementById("lettuceCost").value.toString().substring(1));
  var tomatoCost = parseFloat(document.getElementById("tomatoesCost").value.toString().substring(1));
  var onionCost = parseFloat(document.getElementById("onionCost").value.toString().substring(1));
  var picklesCost = parseFloat(document.getElementById("picklesCost").value.toString().substring(1));
  var total = 0.0;
  
  total += (bunCost + meatCost + baconCost + cheeseCost + lettuceCost + tomatoCost + onionCost + picklesCost);
  document.getElementById("totalCost").value = "$" + total.toFixed(2).toString();
}

function ResetPictures(){ 
  document.getElementById("bunPic").src = "img/None.png";
  document.getElementById("meatPic").src = "img/None.png";
  document.getElementById("cheesePic").src = "img/None.png";
  document.getElementById("lettucePic").src = "img/None.png";
  document.getElementById("tomatoPic").src = "img/None.png";
  document.getElementById("onionPic").src = "img/None.png";
  document.getElementById("picklesPic").src = "img/None.png";
}
