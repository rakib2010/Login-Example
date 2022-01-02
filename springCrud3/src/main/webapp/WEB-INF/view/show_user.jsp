
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<a href="/">Create User</a>

	<div class="container">
		<h1>Product List</h1>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Name</th>
					<th scope="col">username</th>
					<th scope="col">password</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="us" items="${data.users}">
			<tr>
					<td>${us.id}</td>
					<td>${us.name}</td>
					<td>${us.username}</td>
					<td>${us.password}</td>
					<td><a href="/edit/${us.id}">Edit</a> | <a href="/delete/${us.id}">Delete</a></td>
				</tr>
			
			
			</c:forEach>
				
			</tbody>
		</table>
	</div>

</body>
</html>