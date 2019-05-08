<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@ include file="orphanage_header.jsp" %>
</head> 
<body>
<div class="container">
<div style="background-color:yellow;"><marquee><h4>Welcome ${orpname} </h4></marquee></div>
<h3>Post Requirement</h3>
<form action="request">
<div class="form-group">
<textarea class="form-control" rows="10" name="area"></textarea>
<label>Enter date of request:</label><input type="date" name="dateofrequest">
</div>
<div><button type="submit" class="btn btn-lg btn-info">Submit Request</button></div>
</div> 
</form>
</body>
</html>