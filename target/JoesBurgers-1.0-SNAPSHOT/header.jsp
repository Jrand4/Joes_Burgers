<%-- 
    Document   : header
    Created on : Oct 4, 2020, 11:54:35 AM
    Author     : xarro
--%>
<head>
  <title>Bootstrap 4 Website Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
    .fakeimg {
      height: 200px;
      background: #aaa;
    }
  </style>
</head>
<body>
  <div class="jumbotron text-center" style="margin-bottom:0">
    <img src="img/Logo_medium.png"/>
    <h1>Joe's Burgers</h1>
    <p>You dream it, we make it!</p> 
  </div>
  <%
    try {
      if (session.getAttribute("userType").equals("customer")) {
  %>   <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <a class="navbar-brand" href="#"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="index.jsp">Home</a>
        </li>
        <!-- Dropdown -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
            Make An Order
          </a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="buildYourOwn.jsp">Build Your Own</a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="logoutAction.jsp">Logout</a>
        </li>
      </ul>
    </div>  
  </nav> 
  <%
  } else if (session.getAttribute("userType").equals("staff")) {
  %>   <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <a class="navbar-brand" href="#"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="orderQueue.jsp">Order Queue</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="logoutAction.jsp">Logout</a>
        </li>
      </ul>
    </div>  
  </nav> 
  <%
  } else {
  %>   <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <a class="navbar-brand" href="#"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="login.jsp">Login</a>
        </li>
      </ul>
    </div>  
  </nav> 
  <%
      }
    } catch (Exception ex) {
      out.print(ex.getMessage());
    }
  %>

</body>

