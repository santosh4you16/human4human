<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>H4H: Home</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 <link href="<c:url value="/resources/CSS/style.css" />" rel="stylesheet">
 
 <style>
 html,body{
height:100%;
font-family: 'Bitter', serif;
}
.carousel,.item,.active{
height:100%;
}
.carousel-inner{
height:100%;
}
.carousel-img-width{
width:100%;
}
#caption{
padding-bottom: 50px;
/*position: absolute;*/
top:30%;
/*transform: translate(-50%);*/
}
#caption h2{
font-size:40px;
text-transform:uppercase;
text-shadow:1px 1px 10px #000;
}
#caption p{
font-size:25px;
text-shadow:1px 1px 10px #000;
}
#caption1{
padding-bottom: 50px;
/*position: absolute;*/
top:30%;
/*transform: translate(-50%);*/
}
#caption1 h2{
font-size:35px;
text-transform:uppercase;
text-shadow:1px 1px 10px #000;
}
#caption1 p{
font-size:25px;

text-shadow:1px 1px 10px #000;
}
#caption2{
padding-bottom: 50px;
/*position: absolute;*/
top:30%;
/*transform: translate(-50%);*/
}
#caption2 h2{
font-size:40px;
text-transform:uppercase;
text-shadow:1px 1px 10px #000;
}
#caption2 p{
font-size:25px;
text-shadow:1px 1px 10px #000;
}
 </style>
</head>

<body>

     <!-- Static navbar -->
    <nav class="navbar navbar-default navbar-static-top" id="opace">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">-| H4H |-</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="lalalulu">Home</a></li>
            <li><a href="add" >About</a></li>
           <!--  <li><a href="#contact">Contact</a></li> -->
         <!-- <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Donate <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="userhomepage">Food Donate</a></li>
                <li><a href="orphanageheader">Clothes Donate</a></li>
                <li><a href="userform">Cash Amount</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Orphanage</li>
                <li><a href="orphanslider">As per you area</a></li>
                <li><a href="#">List All</a></li>
              </ul>
            </li> -->   
            <li><a href="adminlogin">Admin</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
           <li><a href="../navbar/">Contact Us &nbsp &nbsp</a></li> 
            <li class="active"><a data-toggle="modal" data-target="#mdl1">Log In <span class="sr-only">(current)</span></a></li>
            <li><a data-toggle="modal" data-target="#mdl">Sign Up</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

<!-- MODAL -->	
	<div class="modal fade" id="mdl">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h3 class="modal-title">Register as ?</h3>
			</div>
			<div class="modal-body">
			Be the part of our Donation System and spread happiness.
			</div>
			<div class="modal-footer">
			<a href="form" class="btn btn-primary">User SignUp</a>
			<a href="orphnageform" class="btn btn-warning">Orphanage SignUp</a>
			</div>
		</div>
	</div>

</div>
	
	<!-- MODAL -->	
	<div class="modal fade" id="mdl1">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h3 class="modal-title">Login Here </h3>
			</div>
			<div class="modal-body">
			Be the part of our Donation System and spread happiness.
			</div>
			<div class="modal-footer">
			<a href="userlogin" class="btn btn-primary">User Login</a>
			<a href="orphanlogin" class="btn btn-warning">Orphanage Login</a>
			</div>
		</div>
	</div>

</div>

<!-- IMAGE SLIDER -->
<div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="resources/images/18.jpeg" alt="donate" style="width:100%;height:500px; object-fit:cover;">
        <div class="carousel-caption" id="caption1">
        <p>It's not how much we give but</p>
        <h2>how much love we put into giving.</h2>
        </div>
      </div>

      <div class="item">
        <img src="resources/images/19.jpeg" alt="body" style="width:100%;height:500px;">
        <div class="carousel-caption" id="caption2">
        <h2>you have two hands</h2>
        <p>one to help yourself,the second to help others</p>
      </div>
      </div>
    
      <div class="item">
        <img src="resources/images/16.jpg" alt="help" style="width:100%;height:500px;">
        <div class="carousel-caption" id="caption">
          <p>Giving is not just
          about making a dontion,
               it's about</p>
          <h2>making a difference</h2>
        </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
	

</body>
</html>





