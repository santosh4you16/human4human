<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Playfair+Display" rel="stylesheet">

</head>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
hr.style1{
	border-top: 3px solid #8c8b8b;
}
input[type=text]:focus, input[type=password]:focus,input[type=email]:focus {
    outline: 3px solid blue;
    
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}



/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
#mask {
    position: absolute;
    left: 0;
    top: 0;
    right: 0;
    bottom: 0;
    background-color: black;
    opacity: 0.5;

    filter: blur(10px);
    -webkit-filter: blur(10px);
    -moz-filter: blur(10px);
    -o-filter: blur(10px);
    -ms-filter: blur(10px);
    filter: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg'><filter id='svgMask'><feGaussianBlur stdDeviation='10' /></filter></svg>#svgMask");
}
</style>

<body>
<div class="row">
<div class="col-md-4"></div>

<div class="col-md-4">
<form action="orpreg">
    <h1>Sign Up</h1>
    <p>Please fill in this form to create an account.</p>
    <hr class="style1">
    <div class="form-group">
      <label for="oname">Orphange Name:</label>
      <input type="text" class="form-control" id="oname" placeholder="Enter name" name="oname">
    </div>
    
   
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
     <div class="form-group">
      <label for="login name">Login Name:</label>
      <input type="text" class="form-control" id="loginname" placeholder="Enter Login name" name="loginame">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
    </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St " name="address">
  </div>
  
 
  <div class="row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="inputCity" name="city">
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
      <select id="inputState" class="form-control" name="state">
        <option selected>Choose...</option>
        <option>...</option>
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <input type="text" class="form-control" id="inputZip" name="pincode">
    </div>
  </div>
   <div class="form-group">
    <label for="Phone No">Contact No.</label>
    <input type="text" class="form-control" id="age" name="phno">
  </div>
    <div class="custom-file row">
    <div class="col-lg-10">
    <label>Upload Photo</label>
   <input type="file" class="custom-file-input" name="opic">
   </div>
  </div>
   <div class="custom-file row">
    <div class="col-lg-10">
    <label>Upload certificate</label>
   <input type="file" class="custom-file-input" name="ocertificate">
   </div>
  </div>
                    
    <div lass="form-group">
   <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
    </div>
  
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

    <div class="clearfix">
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
    </form>
	</div>
	<div class="col-md-4">
	</div>
	</div>
	
	
</body>
</html>
