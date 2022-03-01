<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">


<style>
.card {
	position: relative;
	margin-left: auto;
	margin-right: auto;
	margin-top: 15vh;
	background-color: rgba(0, 0, 0, 0);
	background: transparent;
	border-radius: 5px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

.card-body {
	margin-top: 10px;
}

img {
	position: absolute;
	margin:-8px;
}

.form-label {
	margin-right: 30px;
	padding-left: 10px;
	font-weight: bold;
}

.form-control {
	margin: 8px;
}

.card-title {
	text-align: center;
	margin-bottom: 3vh;
}

.phoneImg {
	margin-bottom: 3px;
}

a:hover {
	background-color: blue;
}

h3{
	position: relative;
	background-color: green;
	color:white;
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
	
	
<h3>${success}</h3>
<h3><font color="red">${failed}</font></h3>
	

	<img src="pages/phonebook.jpg" width="100%" height="100%" alt="">
    <div class="card" style="width: 30rem;">
        <div class="card-body">
          <h4 class="card-title">PhoneBook <svg class="phoneImg" xmlns="http://www.w3.org/2000/svg" width="20" height="25" fill="currentColor" class="bi bi-journals" viewBox="0 0 16 16">
            <path d="M5 0h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2 2 2 0 0 1-2 2H3a2 2 0 0 1-2-2h1a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1H1a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v9a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1H3a2 2 0 0 1 2-2z"/>
            <path d="M1 6v-.5a.5.5 0 0 1 1 0V6h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V9h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 2.5v.5H.5a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1H2v-.5a.5.5 0 0 0-1 0z"/>
          </svg></h4>
          <!-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p> -->
          <form:form action="savePhone?id=${phoneBook.id}" modelAttribute="phoneBook" method="post">
          <table>
              <tr>
                  <td>
                        <label for="exampleFormControlInput1" class="form-label"><svg class="phoneImg" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                          <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                          <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                        </svg> Name:</label>
                  </td>
                  <td>
                        <form:input type="text" path="name" class="form-control" id="exampleFormControlInput1" placeholder="Enter Your Name" required="required"/>
                  </td>
              </tr>
              <tr>
                <td>
                      <label for="exampleFormControlInput1" class="form-label"><svg class="phoneImg" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 16 16">
                        <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
                      </svg> Email:</label>
                </td>
                <td>
                      <form:input type="email" path="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" required="required"/>
                </td>
            </tr>
            <tr>
              <td>
                    <label for="exampleFormControlInput1" class="form-label"><svg class="phoneImg" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-phone-vibrate-fill" viewBox="0 0 16 16">
                      <path d="M4 4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V4zm5 7a1 1 0 1 0-2 0 1 1 0 0 0 2 0zM1.807 4.734a.5.5 0 1 0-.884-.468A7.967 7.967 0 0 0 0 8c0 1.347.334 2.618.923 3.734a.5.5 0 1 0 .884-.468A6.967 6.967 0 0 1 1 8c0-1.18.292-2.292.807-3.266zm13.27-.468a.5.5 0 0 0-.884.468C14.708 5.708 15 6.819 15 8c0 1.18-.292 2.292-.807 3.266a.5.5 0 0 0 .884.468A7.967 7.967 0 0 0 16 8a7.967 7.967 0 0 0-.923-3.734zM3.34 6.182a.5.5 0 1 0-.93-.364A5.986 5.986 0 0 0 2 8c0 .769.145 1.505.41 2.182a.5.5 0 1 0 .93-.364A4.986 4.986 0 0 1 3 8c0-.642.12-1.255.34-1.818zm10.25-.364a.5.5 0 0 0-.93.364c.22.563.34 1.176.34 1.818 0 .642-.12 1.255-.34 1.818a.5.5 0 0 0 .93.364C13.856 9.505 14 8.769 14 8c0-.769-.145-1.505-.41-2.182z"/>
                    </svg> Mobile Number:</label>
              </td>
              <td>
                    <form:input type="text" path="mobileno" class="form-control" id="exampleFormControlInput1" placeholder="Mobile Number" required="required"/>
              </td>
          </tr>
         <!--  <tr align="center">
            <td colspan="2"> <a href="#" class="btn btn-primary">Save</a></td>
          </tr> -->
          <tr align="center">
                    <td colspan="2"><input type="Submit" id="button" value="submit" ></td>
                </tr>
          </table>
         
        </form:form>

        </div>
      </div>


</body>
</html>