<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>

<head>

<c:import url="header.jsp"/>
<style type="text/css">

body{
	padding-top: 40px;
	background-image: url("https://images.pexels.com/photos/399161/pexels-photo-399161.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
	background-repeat: no-repeat;
	background-size: cover;
}
	.link1, .link2 {
		padding: 75px;
		float: left; 
		margin: 10px;
		margin-top: 100px;
		position: relative;
		display: inline-flex;
		font-size: 25px;
	}
.container{
		align-items: center;
	}
	
	 .link2:hover {
			background: green;
	}
	.link1:hover {
	background-color: green;
	}

</style>
</head>
<body>
<div class="container">

<h2>Welcome to Student Management !</h2>
	
		
			<a href="addStudent" class="btn btn-danger text-white link1">Registration</a>
			<a href="AllStudents" class="btn btn-danger text-white link2">All Students</a>
	</div>
</body>
</html>
