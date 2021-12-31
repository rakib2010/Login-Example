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
		<h1>Create Product</h1>
		<form action="/save_product" method="post">
			<div class="mb-3">
				<label for="name" class="form-label">Product Name </label> <input
					type="text" class="form-control" id="name"
					placeholder="Type Product Name" name="name">
			</div>
			<div class="mb-3">
				<label for="price" class="form-label">Price </label> <input
					type="number" class="form-control" id="price"
					placeholder="Enter Price" name="price">
			</div>
			<div>
				<button type="submit" class="btn btn-success">Save</button>

			</div>
			<a href="/">Show Product</a>



		</form>

	</div>

</body>
</html>