<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Spring Crud</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<a href="/create_product">Create Product</a>
	<div class="container">
		<h1>Product List</h1>
		<table class="table table-responsive">
			<thead>
				<tr>
					<th >ID</th>
					<th >Name</th>
					<th >price</th>
					<th >Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="p" items="${data.productList}">
					<tr>
						<td>${p.id}</td>
						<td>${p.name}</td>
						<td>${p.price}</td>
						<td>
						<a href="/edit/${p.id}">Edit</a> | <a href="/delete/${p.id}">Delete</a>
						
						</td>
					</tr>

				</c:forEach>

			</tbody>
		</table>
	</div>


</body>
</html>