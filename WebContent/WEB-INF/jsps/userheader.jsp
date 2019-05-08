<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
 <nav class="navbar navbar-default navbar-static-top" id="opace">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="userprof"><%=session.getAttribute("user") %></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <!-- <li class="active"><a href="#">My Profile</a></li>
            <li><a href="add" >About</a></li>-->
           <!--  <li><a href="#contact">Contact</a></li> -->
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">My Profile<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Donate History</a></li>
                <li><a href="cart">Current Stat</a></li>
                <li><a href="myprof">View My Profile</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Orphanage</li>
                <li><a href="orphanagelist">List All</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
           <li><a href="../navbar/">Change Password &nbsp &nbsp</a></li> 
            <li><a href="logout">Log Out</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

</div>


</body>
</html>