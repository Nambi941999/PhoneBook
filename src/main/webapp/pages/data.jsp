<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core"%>

<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">


<style>
/* a:hover {
	background-color: blue;
} */
img {
	position: absolute;
	background-attachment: fixed;
}

table {
	position: relative;
	margin-top: 5vh;
	text-align: center;
	color:white;
}

thead {
	font-size: x-large;
	color:black;
}
tbody{
	color:black;
}

h1 {
	text-align: center;
	margin-top: 6%;
}

body {
/* 	background-image: url(pages/phonebook.jpg);
 */	background-size: 192.5vh;
	/* background-repeat: no-repeat; */
	background-attachment: fixed;

}

.header {
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 1;
}
.btn{
	margin:3px;
}


</style>
</head>
<body>

	<div class="header">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="/"><svg
						xmlns="http://www.w3.org/2000/svg" width="25" height="25"
						fill="currentColor" class="bi bi-person-lines-fill"
						viewBox="0 0 16 16">
              <path
							d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1h-4zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2z" />
            </svg></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/">Save Contact</a></li>
						<li class="nav-item"><a class="nav-link active" href="allContact">PhoneBook</a>
						</li>
						<li class="nav-item"><a class="nav-link active" href="#">About</a>
						</li>
						<li class="nav-item"><a class="nav-link active" href="#">Contact
								Us</a></li>

					</ul>
					<!-- <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
              </form> -->
				</div>
			</div>
		</nav>


	</div>



	<!-- 	<img src="pages/phonebook.jpg" width="1280" height="680" alt="">
 -->
 
 <h1>PhoneBook</h1>
 


	<div class="container">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Mobile No</th>
					<th scope="col">Action</th>

				</tr>
			</thead>
			<tbody>
				<j:forEach items="${allPhone}" var="phone">
					<tr>
						<th scope="row">${phone.id}</th>
						<td>${phone.name}</td>
						<td>${phone.email}</td>
						<td>${phone.mobileno}</td>
						<%-- <td><a id="edit" href="">Edit </a> | <a id="delete"
							href="/delete/${phone.id}">Delete</a></td> --%>
						<td><a href="update?id=${phone.id}"><button type="button" class="btn btn-success">Edit</button></a><a href="/delete/${phone.id}"><button type="button" class="btn btn-danger">Delete</button></a></td>	
					</tr>

				</j:forEach>

			</tbody>
		</table>
	</div>
</body>
</html>