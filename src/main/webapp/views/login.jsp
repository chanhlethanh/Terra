<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- link css -->
<link rel="stylesheet" href="style.css">

<!-- link icon -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css"
	integrity="sha512-ZnR2wlLbSbr8/c9AgLg3jQPAattCUImNsae6NHYnS9KrIwRdcY9DxFotXhNAKIKbAXlRnujIqUWoXXwqyFOeIQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Form</title>
</head>
<body>
	<div class="container">
		<div class="box">
			<!-- Form đăng ký -->
			<div class="form sign_up">
				<h3>Sign Up</h3>
				<span>or use your email for register</span>

				<form:form action="/register" method="post" id="form_input"
					modelAttribute="user">
					<div class="type">
						<form:input path="username" placeholder="Username" id="username" />
							<form:errors path="username"></form:errors>
					</div>
					<div class="type">
						<form:input path="password" name="password" type="password"
							placeholder="Password" id="password" />
							<form:errors path="password"></form:errors>
					</div>
					<div class="type">
						<form:input path="cfpassword" name="cfpassword" type="password"
							placeholder="Confirm Password" id="cfpassword" />
							<form:errors path="cfpassword"></form:errors>
					</div>
					<c:if test="${not empty sessionScope.message}">
						<div class="type">
							<span class="text-danger">${sessionScope.message}</span>
						</div>
					</c:if>



					<button class="btn bkg">Sign Up</button>
				</form:form>
			</div>

			<!-- Form đăng nhập -->
			<div class="form sign_in">
				<h3>Sign In</h3>
				<span>or use your account</span>

				<form:form action="/login" method="post" id="form_input"
					modelAttribute="user">
					<div class="type">
						<form:input path="username" placeholder="Username" id="username" />
						<form:errors path="username"></form:errors>
					</div>
					<div class="type">
						<form:input path="password" type="password" placeholder="Password"
							id="password" />
							<form:errors path="password"></form:errors>
					</div>
					<div class="forgot">
						<span>Forgot your password?</span>
					</div>

					<button class="btn bkg">Sign In</button>
				</form:form>
			</div>
		</div>

		<!-- overlay -->
		<div class="overlay">
			<div class="page page_signIn">
				<h3>Welcome Back!</h3>
				<p>To keep with us please login with your personal info</p>

				<button class="btn btnSign-in">
					Sign Up <i class="bi bi-arrow-right"></i>
				</button>
			</div>

			<div class="page page_signUp">
				<h3>Hello Friend!</h3>
				<p>Enter your personal details and start journey with us</p>

				<button class="btn btnSign-up">
					<i class="bi bi-arrow-left"></i> Sign In
				</button>
			</div>
		</div>
	</div>

	<!-- link script -->

	<script src="assets/js/main.js"></script>
</body>
</html>
