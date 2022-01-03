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

	<div class="container col-md-5">
		<h1>Create New User</h1>
		<form action="/save" method="post">

			<div class="mb-3">
				<label for="name" class="form-label">Name</label> 
				<input type="text"
					class="form-control" id="name" placeholder="Type name" name="name" required="required">
			</div>
			<div class="mb-3">
				<label for="username" class="form-label">Username</label> 
				<input
					type="text" class="form-control" id="username"
					placeholder="Type username" name="username" required="required">
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Password</label> 
				<input
					type="password" class="form-control" id="password"
					placeholder="Type user password" name="password">
			</div>

			<div>
				Gender
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio"
						name="gender" id="flexRadioDefault1" value= "Male"> 
						<label
						class="form-check-label" for="flexRadioDefault1"> Male </label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio"
						name="gender" id="flexRadioDefault1" value= "Female"> 
						<label
						class="form-check-label" for="flexRadioDefault1"> Female </label>
				</div>
			</div>




			<div>
				Skills
				<div class="form-check form-check-inline">
					<input class="form-check-input " type="checkbox" value="Java"
						id="flexCheckDefault" name="skill"> 
						<label class="form-check-label"
						for="flexCheckDefault" > Jave </label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" value="Php"
						id="flexCheckChecked" name="skill"> 
						<label class="form-check-label"
						for="flexCheckChecked"> Php </label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" value="Android"
						id="flexCheckChecked" name="skill"> 
						<label class="form-check-label"
						for="flexCheckChecked"> Android </label>
				</div>

			</div>


			<div>
				<label>Select Your Location</label> 
				<select class="form-control" name="location">
					<option  >-- Select Your Location --</option>
					<option value="Dhaka" >Dhaka</option>
					<option value="Rajshahi" >Rajshahi</option>
					<option value="Bogura" >Bogura</option>

				</select>


			</div>








			<div>
				<button type="submit" class="btn btn-success mt-5">Save</button>

			</div>

			<a href="/show">Show User List</a>

		</form>

	</div>

</body>
</html>