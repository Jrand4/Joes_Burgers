/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validatePassword()
{
  var pwd = document.registration.pwd.value;
  var regexp = new RegExp("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{8,}");
  if (regexp.test(pwd)) {
    document.getElementById("password1").setCustomValidity("");
  } else {
    document.getElementById("password1").setCustomValidity("Not valid format");

  }
}

function validatePasswordConfirmation()
{
  var pwd1 = document.registration.pwd.value;
  var pwd2 = document.registration.pwd2.value;
  if (pwd1 == pwd2) {
    document.getElementById("password2").setCustomValidity("");
  } else {
    document.getElementById("password2").setCustomValidity("Passwords do not match");
  }
}
