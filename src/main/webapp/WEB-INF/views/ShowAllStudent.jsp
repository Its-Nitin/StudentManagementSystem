<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<c:import url="header.jsp"></c:import>
<style type="text/css">
body{

	background-image: linear-gradient(to right , #c3cfe2,lightblue);
	

}
</style>

</head>
<body>
<div class="container">
<br><hr><br>
<h1>All Data :- </h1>
<table class="table table-striped ">
	
		<thead class="table table-dark">
			<tr>
				<th>Sr. No</th>
				<th>NAME</th>
				<th>AGE</th>
				<th>EMAIL</th>
				<th>CONTACT NO</th>
				<th>GENDER</th>
				<th>OPERATIONS</th>
			</tr>
		</thead>
		<c:forEach items="${allData}" var="student">	
		<tbody>
		<tr>
			<td>${student.id}</td>
			<td>${student.name}</td>
			<td>${student.age}</td>
			<td>${student.email}</td>
			<td>${student.contact}</td>
			<td>${student.gender}</td>
			<td>
				<a href="delete?id=${student.id}">
				<button type="submit" class="btn btn-danger btn-sm" name="act ion" value="delete" >Delete<i class="far fa-trash-alt" ></i></button>
				</a>
				<a href="EditStudent?id=${student.id}"> 
				<button type="submit" class="btn btn-warning btn-sm">Edit <i class="far fa-edit" ></i></button>
				</a>
			</td>
		</tr>
		</tbody>
		</c:forEach>
	</table>
</div>
</body>
</html>