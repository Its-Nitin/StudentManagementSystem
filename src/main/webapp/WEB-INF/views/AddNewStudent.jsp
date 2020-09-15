<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<c:import url="header.jsp"/>
<style type="text/css">
body{
		background-image: linear-gradient(to right , #c3cfe2,lightblue);

}

	.main{
		width: 100%;
		margin:0px;
		padding:0px;
		padding-left:25%;
		padding-right:25%;
		padding-top:1%;
	}
	.form-group{
		padding-top: 2%;
	}
	.register{
		margin-top:10%; 
	}
	.superdiv{
	padding-bottom: 5%;
	}
</style>
</head>
<body>
<div class="main">
	<sf:form action="saveStudent" commandName="stu" class="was-validated">
		<div class="row register">
				<div class="col-sm-12 form-heading">
					<center><h1>FILL ALL DETAILS</h1></center><br>
				</div>
				<div class="col-sm-6 form-group">
					<sf:input type="text" class="form-control" minlength="3" maxlength="16" path="name" id="nam" placeholder="Full Name" autofocus="autofocus" required="required"/>
				</div>
				<div class="col-sm-6 form-group">
					<sf:input type="text" class="form-control" id="age" path="age" pattern="[1-9][0-9]+" title="please Enter a valid age" maxlength="3" placeholder="Age" required="required"/>
				</div>
				
				<div class="col-sm-6 form-group">
					<sf:input type="password" class="form-control" name="password" path="password" id="password" title="There must be a capital and small alphabet and a number also. " pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).*" placeholder="Password" minlength="8" maxlength="16" required="required"/>
				</div>
		
				<div class="col-sm-6 form-group">
					<input type="password" class="form-control" name="cpassword" placeholder="Confirm Password" required="required"/>
				</div>
		
				<div class="col-sm-6 form-group">
					<sf:input type="email" class="form-control" path="email" id="email"  placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required="required"/>
				</div>
		
				<div class="col-sm-6 form-group">
					<sf:input type="text" class="form-control" pattern="[6-9][0-9]*" minlength="10" maxlength="10" path="contact" id="contact" placeholder="Contact No." required="required"/>
				</div>
		
				<div class="form-group col-sm" >
					<label class="radio inline">
						<sf:input type="radio"  path="gender" id="gender" value="male" checked="checked"/>
						<span> Male</span>
					</label>
					<label class="radio inline">
						<sf:input type="radio" path="gender" id="gender" value="female"/>
						<span> Female</span>
					</label>
				</div>
				<div class="col-sm form-group">
					<br><br><button  style="float: right; padding: 3%; font-size: 20px;" class="btn btn-primary text-white badge-pill pl-5 pr-5" type="submit" > SUBMIT <i class="far fa-arrow-alt-circle-right"></i> </button>
				</div>
			</div>
		</sf:form>
	</div>	
	<br><hr><br>
</body>
</html>