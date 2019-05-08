<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Playfair+Display" rel="stylesheet">

<style>
.container{
	/*background-color: grey;*/
	padding-left:20%;
	padding-top:5%;
	
}
#jbtr{
    padding-left:10%;
}



#hd{
	color:white;
	text-shadow: 2px 2px 2px black;
	font-family: 'Playfair Display', serif;
}
</style>
</head>
<body>

<div class="container">
<form action="postevent">
<div class="row=3">
<div class="col-md-4">
<label for="inputname">Date of Event</label>
		<input type="date" class="form-control" name="date" placeholder="Date">
</div>
<div class="col-md-4">
<label for="inputname">Time</label>
		<input type="text" class="form-control" name="time" placeholder="Time">
</div>
<div class="col-md-8">
<label for="inputname">Venue</label>
		<input type="text" class="form-control" name="venue" placeholder="Venue">
</div>
<div class="col-md-8">
<label for="inputname">Description About Event</label>
		<textarea class="form-control" name="description" placeholder="Type your details here"></textarea>
</div>
 <div class="col-md-8" style="text-align: center; margin-top:20px">
                 <input type="submit" class="btn btn-block btn-primary"></button>
                 </div>

</div>
</form>
</div>
</div>

</body>
</html>