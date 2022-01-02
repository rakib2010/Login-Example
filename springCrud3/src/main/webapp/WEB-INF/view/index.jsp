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
	<div class="container">
		<h1>Create New User</h1>
		<form action="/save" method="post">
			<div class="mb-3">
				<label for="name" class="form-label">Name</label> <input type="text"
					class="form-control" id="name" placeholder="Type Your Name"
					name="name">
			</div>
			<div class="mb-3">
				<label for="username" class="form-label">Username</label> <input
					type="text" class="form-control" id="username"
					placeholder="enter username" name="username">
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Password</label> <input
					type="password" class="form-control" id="password" name="password"
					placeholder="Type your Password">
			</div>

			<div>
				<button type="submit" class="btn btn-success">Save</button>

			</div>
			<a href="/show">Show Users List</a>


		</form>

	</div>


</body>
</html>