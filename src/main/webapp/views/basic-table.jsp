<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- plugins:css -->
<link rel="stylesheet" href="/assets/vendors/feather/feather.css">
<link rel="stylesheet"
	href="/assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="/assets/vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet"
	href="/assets/vendors/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="/assets/vendors/typicons/typicons.css">
<link rel="stylesheet"
	href="/assets/vendors/simple-line-icons/css/simple-line-icons.css">
<link rel="stylesheet" href="/assets/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="/assets/css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="/assets/images/favicon.png" />
<style>body {
	background: #eee
}

#regForm {
	background-color: #ffffff;
	margin: 0px auto;
	font-family: Raleway;
	padding: 40px;
	border-radius: 10px
}

#register{

color: #6A1B9A;
}

h1 {
	text-align: center
}

input {
	padding: 10px;
	width: 100%;
	font-size: 17px;
	font-family: Raleway;
	border: 1px solid #aaaaaa;
	border-radius: 10px;
	-webkit-appearance: none;
}



.tab input:focus{

border:1px solid #6a1b9a !important;
outline: none;
}

input.invalid {

	border:1px solid #e03a0666;
}

.tab {
	display: none
}

button {
	background-color: #6A1B9A;
	color: #ffffff;
	border: none;
	border-radius: 50%;
	padding: 10px 20px;
	font-size: 17px;
	font-family: Raleway;
	cursor: pointer
}

button:hover {
	opacity: 0.8
}

button:focus{

outline: none !important;
}

#prevBtn {
	background-color: #bbbbbb
}


.all-steps{
		text-align: center;
	margin-top: 30px;
	margin-bottom: 30px;
	width: 100%;
	display: inline-flex;
	justify-content: center;
}

.step {
		 height: 40px;
	width: 40px;
	margin: 0 2px;
	background-color: #bbbbbb;
	border: none;
	border-radius: 50%;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 15px;
	color: #6a1b9a;
	opacity: 0.5;
}

.step.active {
	opacity: 1
}


.step.finish {
 color: #fff;
 background: #6a1b9a;
 opacity: 1;

}



.all-steps {
	text-align: center;
	margin-top: 30px;
	margin-bottom: 30px
}

.thanks-message {
	display: none
}</style>
</head>
<body>
	<div class="container-scroller">
		<!-- partial:../../partials/_navbar.html -->
		<nav
			class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex align-items-top flex-row">
			<div
				class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
				<div class="me-3">
					<button class="navbar-toggler navbar-toggler align-self-center"
						type="button" data-bs-toggle="minimize">
						<span class="icon-menu"></span>
					</button>
				</div>
				<div>
					<a class="navbar-brand brand-logo" href="../../index.html"> <img
						src="assets/images/logo.svg" alt="logo" />
					</a> <a class="navbar-brand brand-logo-mini" href="../../index.html">
						<img src="assets/images/logo-mini.svg" alt="logo" />
					</a>
				</div>
			</div>
			<div class="navbar-menu-wrapper d-flex align-items-top">
				<ul class="navbar-nav">
					<li class="nav-item fw-semibold d-none d-lg-block ms-0">
						<h1 class="welcome-text">
							Good Morning, <span class="text-black fw-bold">John Doe</span>
						</h1>
						<h3 class="welcome-sub-text">Your performance summary this
							week</h3>
					</li>
				</ul>
				<ul class="navbar-nav ms-auto">
					<li class="nav-item dropdown d-none d-lg-block"><a
						class="nav-link dropdown-bordered dropdown-toggle dropdown-toggle-split"
						id="messageDropdown" href="#" data-bs-toggle="dropdown"
						aria-expanded="false"> Select Category </a>
						<div
							class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0"
							aria-labelledby="messageDropdown">
							<a class="dropdown-item py-3">
								<p class="mb-0 fw-medium float-start">Select category</p>
							</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item preview-item">
								<div class="preview-item-content flex-grow py-2">
									<p class="preview-subject ellipsis fw-medium text-dark">Bootstrap
										Bundle</p>
									<p class="fw-light small-text mb-0">This is a Bundle
										featuring 16 unique dashboards</p>
								</div>
							</a> <a class="dropdown-item preview-item">
								<div class="preview-item-content flex-grow py-2">
									<p class="preview-subject ellipsis fw-medium text-dark">Angular
										Bundle</p>
									<p class="fw-light small-text mb-0">Everything you’ll ever
										need for your Angular projects</p>
								</div>
							</a> <a class="dropdown-item preview-item">
								<div class="preview-item-content flex-grow py-2">
									<p class="preview-subject ellipsis fw-medium text-dark">VUE
										Bundle</p>
									<p class="fw-light small-text mb-0">Bundle of 6 Premium Vue
										Admin Dashboard</p>
								</div>
							</a> <a class="dropdown-item preview-item">
								<div class="preview-item-content flex-grow py-2">
									<p class="preview-subject ellipsis fw-medium text-dark">React
										Bundle</p>
									<p class="fw-light small-text mb-0">Bundle of 8 Premium
										React Admin Dashboard</p>
								</div>
							</a>
						</div></li>
					<li class="nav-item d-none d-lg-block">
						<div id="datepicker-popup"
							class="input-group date datepicker navbar-date-picker">
							<span class="input-group-addon input-group-prepend border-right">
								<span class="icon-calendar input-group-text calendar-icon"></span>
							</span> <input type="text" class="form-control">
						</div>
					</li>
					<li class="nav-item">
						<form class="search-form" action="#">
							<i class="icon-search"></i> <input type="search"
								class="form-control" placeholder="Search Here"
								title="Search here">
						</form>
					</li>
					<li class="nav-item dropdown"><a
						class="nav-link count-indicator" id="notificationDropdown"
						href="#" data-bs-toggle="dropdown"> <i class="icon-bell"></i>
							<span class="count"></span>
					</a>
						<div
							class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0"
							aria-labelledby="notificationDropdown">
							<a class="dropdown-item py-3 border-bottom">
								<p class="mb-0 fw-medium float-start">You have 4 new
									notifications</p> <span
								class="badge badge-pill badge-primary float-end">View all</span>
							</a> <a class="dropdown-item preview-item py-3">
								<div class="preview-thumbnail">
									<i class="mdi mdi-alert m-auto text-primary"></i>
								</div>
								<div class="preview-item-content">
									<h6 class="preview-subject fw-normal text-dark mb-1">Application
										Error</h6>
									<p class="fw-light small-text mb-0">Just now</p>
								</div>
							</a> <a class="dropdown-item preview-item py-3">
								<div class="preview-thumbnail">
									<i class="mdi mdi-lock-outline m-auto text-primary"></i>
								</div>
								<div class="preview-item-content">
									<h6 class="preview-subject fw-normal text-dark mb-1">Settings</h6>
									<p class="fw-light small-text mb-0">Private message</p>
								</div>
							</a> <a class="dropdown-item preview-item py-3">
								<div class="preview-thumbnail">
									<i class="mdi mdi-airballoon m-auto text-primary"></i>
								</div>
								<div class="preview-item-content">
									<h6 class="preview-subject fw-normal text-dark mb-1">New
										user registration</h6>
									<p class="fw-light small-text mb-0">2 days ago</p>
								</div>
							</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link count-indicator" id="countDropdown" href="#"
						data-bs-toggle="dropdown" aria-expanded="false"> <i
							class="icon-mail icon-lg"></i>
					</a></li>
					<li class="nav-item dropdown d-none d-lg-block user-dropdown">
						<a class="nav-link" id="UserDropdown" href="#"
						data-bs-toggle="dropdown" aria-expanded="false"> <img
							class="img-xs rounded-circle"
							src="/assets/images/faces/face8.jpg" alt="Profile image">
					</a>
						<div class="dropdown-menu dropdown-menu-right navbar-dropdown"
							aria-labelledby="UserDropdown">
							<div class="dropdown-header text-center">
								<img class="img-md rounded-circle"
									src="/assets/images/faces/face8.jpg" alt="Profile image">
								<p class="mb-1 mt-3 fw-semibold">Allen Moreno</p>
								<p class="fw-light text-muted mb-0">allenmoreno@gmail.com</p>
							</div>
							<a class="dropdown-item"><i
								class="dropdown-item-icon mdi mdi-account-outline text-primary me-2"></i>
								My Profile <span class="badge badge-pill badge-danger">1</span></a>
							<a class="dropdown-item"><i
								class="dropdown-item-icon mdi mdi-message-text-outline text-primary me-2"></i>
								Messages</a> <a class="dropdown-item"><i
								class="dropdown-item-icon mdi mdi-calendar-check-outline text-primary me-2"></i>
								Activity</a> <a class="dropdown-item"><i
								class="dropdown-item-icon mdi mdi-help-circle-outline text-primary me-2"></i>
								FAQ</a> <a class="dropdown-item"><i
								class="dropdown-item-icon mdi mdi-power text-primary me-2"></i>Sign
								Out</a>
						</div>
					</li>
				</ul>
				<button
					class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
					type="button" data-bs-toggle="offcanvas">
					<span class="mdi mdi-menu"></span>
				</button>
			</div>
		</nav>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:../../partials/_sidebar.html -->
			<nav class="sidebar sidebar-offcanvas" id="sidebar">
				<ul class="nav">
					<li class="nav-item"><a class="nav-link" href="admin.jsp">
							<i class="mdi mdi-grid-large menu-icon"></i> <span
							class="menu-title">Dashboard</span>
					</a></li>
					<li class="nav-item nav-category">UI Elements</li>
					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false"
						aria-controls="ui-basic"> <i
							class="menu-icon mdi mdi-floor-plan"></i> <span
							class="menu-title">UI Elements</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="ui-basic">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="/assets/pages/ui-features/buttons.html">Buttons</a></li>
								<li class="nav-item"><a class="nav-link"
									href="/assets/pages/ui-features/dropdowns.html">Dropdowns</a></li>
								<li class="nav-item"><a class="nav-link"
									href="/assets/pages/ui-features/typography.html">Typography</a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="collapse" href="#form-elements"
						aria-expanded="false" aria-controls="form-elements"> <i
							class="menu-icon mdi mdi-card-text-outline"></i> <span
							class="menu-title">Form elements</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="form-elements">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="/assets/pages/forms/basic_elements.html">Basic
										Elements</a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="collapse" href="#charts" aria-expanded="false"
						aria-controls="charts"> <i
							class="menu-icon mdi mdi-chart-line"></i> <span
							class="menu-title">Charts</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="charts">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="/assets/pages/charts/chartjs.html">ChartJs</a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="collapse" href="#tables" aria-expanded="false"
						aria-controls="tables"> <i class="menu-icon mdi mdi-table"></i>
							<span class="menu-title">Tables</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="tables">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="/simple-page">Products table</a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="collapse" href="#icons" aria-expanded="false"
						aria-controls="icons"> <i
							class="menu-icon mdi mdi-layers-outline"></i> <span
							class="menu-title">Icons</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="icons">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="/assets/pages/icons/font-awesome.html">Font Awesome</a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="collapse" href="#auth" aria-expanded="false"
						aria-controls="auth"> <i
							class="menu-icon mdi mdi-account-circle-outline"></i> <span
							class="menu-title">User Pages</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="auth">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="/assets/pages/samples/blank-page.html"> Blank Page </a></li>
								<li class="nav-item"><a class="nav-link"
									href="/assets/pages/samples/error-404.html"> 404 </a></li>
								<li class="nav-item"><a class="nav-link"
									href="/assets/pages/samples/error-500.html"> 500 </a></li>
								<li class="nav-item"><a class="nav-link"
									href="/assets/pages/samples/login.html"> Login </a></li>
								<li class="nav-item"><a class="nav-link"
									href="/assets/pages/samples/register.html"> Register </a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						href="/assets/docs/documentation.html"> <i
							class="menu-icon mdi mdi-file-document"></i> <span
							class="menu-title">Documentation</span>
					</a></li>
				</ul>
			</nav>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-lg-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Basic Table</h4>
									<p class="card-description">
										Add class
										<code>.table</code>
									</p>

									<div class="table-responsive">
										<div class="container mt-5">
											<div class="row d-flex justify-content-center align-items-center">
													<div class="col-md-8">
															<!-- <form action="Save-product" modelAttribute="PRODUCT" method="post" id="regForm">
																	<h1 id="register"></h1>
																	<div class="all-steps" id="all-steps"> 
																		<span class="step"><i class="fa fa-user"></i></span> 
																		<span class="step"><i class="fa fa-map-marker"></i></span>
																		<span class="step"><i class="fa fa-shopping-bag"></i></span>
																	</div>
									
																	<div class="tab">
																		<h6>What's your Product name?</h6>
																			<p>
																				<input placeholder="Product Name..." oninput="this.className = ''" name="product_name"></p>
																			
																	</div>
																	<div class="tab">
																		<h6>What's your Price?</h6>
																			<p><input placeholder="Product Price" oninput="this.className = ''" name="price"></p>
																			
																	</div>
																	<div class="tab">
																			<h6>Quantity?</h6>
																			<p><input placeholder="Quantity" oninput="this.className = ''" name="quantity"></p>
																	 
																	</div>
																	<div class="thanks-message text-center" id="text-message"> <img src="https://i.imgur.com/O18mJ1K.png" width="100" class="mb-4">
																			<h3>Thankyou for add more product!</h3> <span>Thanks for your valuable information.</span>
																	</div>
																	<div style="overflow:auto;" id="nextprevious">
																			<div style="float:right;">
																				<button type="button" id="prevBtn" onclick="nextPrev(-1)"><i class="fa fa-angle-double-left"></i></button> 
																				<button type="button" id="nextBtn" onclick="nextPrev(1)"><i class="fa fa-angle-double-right"></i></button></div>
																	</div>
															</form> -->


															<form action="Save-product" modelAttribute="PRODUCT" method="post"
														>
															<div class="form-group">
																<label>Product name:</label> <input type="text"
																	class="form-control" name="product_name" path="username"
																	placeholder="Enter name" />
																<form:errors path="username" cssClass="error"></form:errors>
															</div>
															<div style="float: left;" class="form-group">
																<label>Product price:</label> <input type="text"
																	class="form-control" path="password" name="price"
																	placeholder="Enter price" />
																<form:errors path="password" cssClass="error"></form:errors>
															</div>
															<div style="float: right;" class="form-group">
																<label>Product quantity</label> <input type="number"
																	class="form-control" path="fullname" name="quantity"
																	placeholder="Enter quantiy" />
																<form:errors path="fullname" cssClass="error"></form:errors>
															</div>
															<button style="margin-left: 10cm;" type="submit" class="btn btn-primary">Submit</button>
														</form>
													</div>
											</div>
									</div>
										<table class="table">
											<thead>

												<tr>
													<th>CategoryID</th>
													<th>Category name</th>
													<th>Product name</th>
													<th>Product price</th>
													<th>Quantity</th>
													<th>Available</th>
													<th></th>
												
												</tr>
											</thead>

											<tbody>
												<c:forEach items="${LIST_PRODUCT.content}" var="p">
													<tr>
														<td>${p.category.id}</td>
														<td>${p.category.category_name}</td>
														<td>${p.product_name}</td>
														<td>$${p.price}</td>
														<td>${p.quantity}</td>
														<td>${p.available}</td>
														<td><a class="btn btn-primary btn-sm"
															href="/single-product/${p.id}">Details</a></td>
														
														<!-- <td><a class="btn btn-primary btn-sm"
															href="/single-product/${p.id}"></a><label class="badge badge-danger">Details</label></td> -->
													</tr>
												</c:forEach>
											</tbody>

										</table>

									</div>

									<!-- Pagination -->
									<nav class="" aria-label="Page navigation example">
										<ul class="pagination justify-content-center">
											<li class="page-item"><a class="page-link"
												href="/simple-page?p=${LIST_PRODUCT.number - 1}"
												tabindex="-1">Previous</a></li>
											<li class="page-item"><a class="page-link"
												href="/simple-page?p=0">First</a></li>
											<li class="page-item"><a class="page-link"
												href="/simple-page?p=${LIST_PRODUCT.totalPages - 1}">Last</a></li>
											<li class="page-item"><a class="page-link"
												href="/simple-page?p=${LIST_PRODUCT.number + 1}">Next</a></li>
											
										</ul>
									</nav>
								</div>
							</div>
						</div>
						<div class="col-lg-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Category Table</h4>
									<p class="card-description">
										ta class ble-hover
										</code>
									</p>
									<div class="table-responsive">
										<table class="table table-hover">
											<thead>
												<tr>
													<th>Category_ID</th>
													<th>Category name</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${LIST_CATEGORY}" var="c" step="5"
													begin="1" end="100">
													<tr>
														<td>${c.id}</td>
														<td>${c.category_name}</td>
														<!-- <td class="text-danger">28.76% <i
														class="ti-arrow-down"></i></td>
													<td><label class="badge badge-danger">Pending</label></td> -->
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Accounts Table</h4>
									<form action="Save" modelAttribute="ACCOUNT" method="post"
										enctype="multipart/form-data">
										<div class="form-group">
											<label>UserName</label> <input type="text"
												class="form-control" name="username" path="username"
												placeholder="Enter UserName" />
											<form:errors path="username" cssClass="error"></form:errors>
										</div>
										<div style="float: right" class="form-group">
											<label>Password:</label> <input type="password"
												class="form-control" path="password" name="password"
												placeholder="Enter password" />
											<form:errors path="password" cssClass="error"></form:errors>
										</div>
										<div style="float: right" class="form-group">
											<label>FullName</label> <input type="text"
												class="form-control" path="fullname" name="fullname"
												placeholder="Enter fullname" />
											<form:errors path="fullname" cssClass="error"></form:errors>
										</div>
										<div style="float: right" class="form-group">
											<label>Email</label> <input type="text" class="form-control"
												path="email" name="email" placeholder="Enter email" />
											<form:errors path="email" cssClass="error"></form:errors>
										</div>
										<div  style="float: inherit" class="form-group">
											<label></label> <input type="file" class="form-control"
												name="image" placeholder="Enter photo"
												accept="image/png, image/jpeg" />
											<p class="error">${ERROR_PHOTO}</p>
										</div>

										<button type="submit" class="btn btn-primary">Submit</button>
										<button type="reset" class="btn btn-primary">Cancel</button>
									</form>
									<p class="card-description">
										Add class
										<code>.table-striped</code>
									</p>
									<div class="table-responsive">
										<table class="table table-striped">

											<thead>
												<tr>
													<th>ID</th>
													<th>Username</th>
													<th>Email</th>
													<th>Fullname</th>
													<th>Photo</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${LIST_ACCOUNT}" var="ac" begin="20"
													end="34">
													<tr>
														<td class="py-1">${ac.id}</td>
														<td>${ac.username}</td>
														<td>${ac.email}</td>
														<td>${ac.fullname}</td>
														<td align="center"><img
															src="/assets/images/${ac.photo}" width="40" height="40" /></td>
														<td><a class="btn btn-primary btn-sm"
															href="?btnEdit=&id=${ac.id}">Edit</a></td>
														<td><a class="btn btn-danger btn-sm"
															href="?btnDel=&id=${ac.id}">Delete</a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Bordered table</h4>
									<p class="card-description">
										Add class
										<code>.table-bordered</code>
									</p>
									<div class="table-responsive pt-3">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th>#</th>
													<th>First name</th>
													<th>Progress</th>
													<th>Amount</th>
													<th>Deadline</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>Herman Beck</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-success" role="progressbar"
																style="width: 25%" aria-valuenow="25" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</td>
													<td>$ 77.99</td>
													<td>May 15, 2015</td>
												</tr>
												<tr>
													<td>2</td>
													<td>Messsy Adam</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-danger" role="progressbar"
																style="width: 75%" aria-valuenow="75" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</td>
													<td>$245.30</td>
													<td>July 1, 2015</td>
												</tr>
												<tr>
													<td>3</td>
													<td>John Richards</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-warning" role="progressbar"
																style="width: 90%" aria-valuenow="90" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</td>
													<td>$138.00</td>
													<td>Apr 12, 2015</td>
												</tr>
												<tr>
													<td>4</td>
													<td>Peter Meggik</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-primary" role="progressbar"
																style="width: 50%" aria-valuenow="50" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</td>
													<td>$ 77.99</td>
													<td>May 15, 2015</td>
												</tr>
												<tr>
													<td>5</td>
													<td>Edward</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-danger" role="progressbar"
																style="width: 35%" aria-valuenow="35" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</td>
													<td>$ 160.25</td>
													<td>May 03, 2015</td>
												</tr>
												<tr>
													<td>6</td>
													<td>John Doe</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-info" role="progressbar"
																style="width: 65%" aria-valuenow="65" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</td>
													<td>$ 123.21</td>
													<td>April 05, 2015</td>
												</tr>
												<tr>
													<td>7</td>
													<td>Henry Tom</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-warning" role="progressbar"
																style="width: 20%" aria-valuenow="20" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</td>
													<td>$ 150.00</td>
													<td>June 16, 2015</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Inverse table</h4>
									<p class="card-description">
										Add class
										<code>.table-dark</code>
									</p>
									<div class="table-responsive pt-3">
										<table class="table table-dark">
											<thead>
												<tr>
													<th>#</th>
													<th>First name</th>
													<th>Amount</th>
													<th>Deadline</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>Herman Beck</td>
													<td>$ 77.99</td>
													<td>May 15, 2015</td>
												</tr>
												<tr>
													<td>2</td>
													<td>Messsy Adam</td>
													<td>$245.30</td>
													<td>July 1, 2015</td>
												</tr>
												<tr>
													<td>3</td>
													<td>John Richards</td>
													<td>$138.00</td>
													<td>Apr 12, 2015</td>
												</tr>
												<tr>
													<td>4</td>
													<td>Peter Meggik</td>
													<td>$ 77.99</td>
													<td>May 15, 2015</td>
												</tr>
												<tr>
													<td>5</td>
													<td>Edward</td>
													<td>$ 160.25</td>
													<td>May 03, 2015</td>
												</tr>
												<tr>
													<td>6</td>
													<td>John Doe</td>
													<td>$ 123.21</td>
													<td>April 05, 2015</td>
												</tr>
												<tr>
													<td>7</td>
													<td>Henry Tom</td>
													<td>$ 150.00</td>
													<td>June 16, 2015</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12 stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Table with contextual classes</h4>
									<p class="card-description">
										Add class
										<code>.table-{color}</code>
									</p>
									<div class="table-responsive pt-3">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th>#</th>
													<th>First name</th>
													<th>Product</th>
													<th>Amount</th>
													<th>Deadline</th>
												</tr>
											</thead>
											<tbody>
												<tr class="table-info">
													<td>1</td>
													<td>Herman Beck</td>
													<td>Photoshop</td>
													<td>$ 77.99</td>
													<td>May 15, 2015</td>
												</tr>
												<tr class="table-warning">
													<td>2</td>
													<td>Messsy Adam</td>
													<td>Flash</td>
													<td>$245.30</td>
													<td>July 1, 2015</td>
												</tr>
												<tr class="table-danger">
													<td>3</td>
													<td>John Richards</td>
													<td>Premeire</td>
													<td>$138.00</td>
													<td>Apr 12, 2015</td>
												</tr>
												<tr class="table-success">
													<td>4</td>
													<td>Peter Meggik</td>
													<td>After effects</td>
													<td>$ 77.99</td>
													<td>May 15, 2015</td>
												</tr>
												<tr class="table-primary">
													<td>5</td>
													<td>Edward</td>
													<td>Illustrator</td>
													<td>$ 160.25</td>
													<td>May 03, 2015</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:../../partials/_footer.html -->
				<footer class="footer">
					<div
						class="d-sm-flex justify-content-center justify-content-sm-between">
						<span
							class="text-muted text-center text-sm-left d-block d-sm-inline-block">Premium
							<a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap
								admin template</a> from BootstrapDash.
						</span> <span
							class="float-none float-sm-end d-block mt-1 mt-sm-0 text-center">Copyright
							© 2023. All rights reserved.</span>
					</div>
				</footer>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="/assets/vendors/js/vendor.bundle.base.js"></script>
	<script
		src="/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="/assets/js/off-canvas.js"></script>
	<script src="/assets/js/template.js"></script>
	<script src="/assets/js/settings.js"></script>
	<script src="/assets/js/hoverable-collapse.js"></script>
	<script src="/assets/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<!-- End custom js for this page-->
	 <script>var currentTab = 0;
		document.addEventListener("DOMContentLoaded", function(event) {


		showTab(currentTab);

		});

		function showTab(n) {
		var x = document.getElementsByClassName("tab");
		x[n].style.display = "block";
		if (n == 0) {
		document.getElementById("prevBtn").style.display = "none";
		} else {
		document.getElementById("prevBtn").style.display = "inline";
		}
		if (n == (x.length - 1)) {
		document.getElementById("nextBtn").innerHTML = '<i class="fa fa-angle-double-right"></i>';
		} else {
		document.getElementById("nextBtn").innerHTML = '<i class="fa fa-angle-double-right"></i>';
		}
		fixStepIndicator(n)
		}

		function nextPrev(n) {
		var x = document.getElementsByClassName("tab");
		if (n == 1 && !validateForm()) return false;
		x[currentTab].style.display = "none";
		currentTab = currentTab + n;
		if (currentTab >= x.length) {
	
		document.getElementById("nextprevious").style.display = "none";
		document.getElementById("all-steps").style.display = "none";
		document.getElementById("register").style.display = "none";
		document.getElementById("text-message").style.display = "block";

		}
		showTab(currentTab);
		}

		function validateForm() {
				 var x, y, i, valid = true;
				 x = document.getElementsByClassName("tab");
				 y = x[currentTab].getElementsByTagName("input");
				 for (i = 0; i < y.length; i++) {
						 if (y[i].value == "") {
								 y[i].className += " invalid";
								 valid = false;
						 }


				 }
				 if (valid) {
						 document.getElementsByClassName("step")[currentTab].className += " finish";
				 }
				 return valid;
		 }

		 function fixStepIndicator(n) {
				 var i, x = document.getElementsByClassName("step");
				 for (i = 0; i < x.length; i++) {
						 x[i].className = x[i].className.replace(" active", "");
				 }
				 x[n].className += " active";
		 }</script>
</body>
</html>