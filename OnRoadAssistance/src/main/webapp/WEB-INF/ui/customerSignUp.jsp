<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="assets/styles/material-components-web.min.css"
	rel="stylesheet">

<link rel="stylesheet" href="assets/styles/bootstrap.min.css">
<link rel="stylesheet" href="assets/styles/style.css">
<link rel="stylesheet" href="assets/styles/icon.css">
<script src="assets/scripts/logsign.js" type="text/javascript"></script>
<title>Welcome To Assistance Portal</title>
<style>
@import
	url('https://fonts.googleapis.com/css?family=Alegreya|Alegreya+Sans|IBM+Plex+Mono:400,400i|IBM+Plex+Sans+Condensed:400,400i|IBM+Plex+Sans:100,100i,400,400i,700,700i|IBM+Plex+Serif:400,400i|Merriweather|Merriweather+Sans|Montserrat|Nanum+Myeongjo|Nunito|Nunito+Sans|Quattrocento|Quattrocento+Sans|Roboto|Roboto+Mono|Roboto+Slab')
	;

* {
	font-family: 'Quattrocento Sans', sans-serif;
}

@import "@material/form-field/mdc-form-field";

@import "@material/radio/mdc-radio";

.nav {
	z-index: 2;
	background-color: #36648B;
}

body {
	background-image: url("assets/images/bgimagereal.png") no-repeat;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}
</style>
<script>
	function validateForm() {

		var username = document.getElementById("customerId").value;
		var username_regex = /^[0-9]{2,10}$/;
		var contact = document.getElementById("customerContactNo").value;
		var contact_regex = /^[0-9]{10}$/;
		var name = document.getElementById("customerName").value;
		var customerName_regex = /^[a-zA-Z]{7,20}$/;

		var gender = document.getElementsByName("custGender");

		var emailID = document.getElementById("customerEmailId").value;
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

		var pass = document.getElementById("password").value;
		var pass_regex = /^[a-zA-Z]{7,20}$/;

		var confirmPass = document.getElementById("confirmPassword").value;

		if (username.match(username_regex)) {
			document.getElementById("customerId").style.borderColor = "green";
			document.getElementById("wrongID").innerHTML = "";
		} else {
			document.getElementById("customerId").style.borderColor = "red";
			document.getElementById("customerId").value = "";
			document.getElementById("wrongID").style.color = "red";
			document.getElementById("wrongID").innerHTML = "*";

			return false;
		}

		if (name.match(customerName_regex)) {
			document.getElementById("customerName").style.borderColor = "green";
			document.getElementById("wrongName").innerHTML = "";
		} else {
			document.getElementById("customerName").style.borderColor = "red";
			document.getElementById("customerName").value = "";
			document.getElementById("wrongName").style.color = "red";
			document.getElementById("wrongName").innerHTML = "*";

			return false;
		}
		if (emailID.match(mailformat)) {
			document.getElementById("customerEmailId").style.borderColor = "green";
			document.getElementById("wrongEmailID").innerHTML = "";
		} else {
			document.getElementById("customerEmailId").style.borderColor = "red";
			document.getElementById("customerEmailId").value = "";
			document.getElementById("wrongEmailID").style.color = "red";
			document.getElementById("wrongEmailID").innerHTML = "*";

			return false;
		}

		if (gender[0].checked) {
			console.log("Male");

		} else if (gender[1].checked) {
			console.log("Female")
		} else {
			alert("Please Select Your Type");
			return false;
		}
		if (contact.match(contact_regex) && contact.length == 10) {
			document.getElementById("customerContactNo").style.borderColor = "green";
			document.getElementById("wrongContact").innerHTML = "";
		} else {
			document.getElementById("customerContactNo").style.borderColor = "red";
			document.getElementById("customerContactNo").value = "";
			document.getElementById("wrongContact").style.color = "red";
			document.getElementById("wrongContact").innerHTML = "*";

			return false;
		}
		if (pass.match(pass_regex) && pass == confirmPass) {
			document.getElementById("password").style.borderColor = "green";
			document.getElementById("wrongPassword").innerHTML = "";
			document.getElementById("confirmPassword").style.borderColor = "green";
			document.getElementById("wrongConfirmPassword").innerHTML = "";
		} else {
			document.getElementById("password").style.borderColor = "red";
			document.getElementById("password").value = "";
			document.getElementById("wrongPassword").style.color = "red";
			document.getElementById("wrongPassword").innerHTML = "*";
			document.getElementById("confirmPassword").style.borderColor = "red";
			document.getElementById("confirmPassword").value = "";
			document.getElementById("wrongConfirmPassword").style.color = "red";
			document.getElementById("wrongConfirmPassword").innerHTML = "*";

			return false;
		}

	}
</script>
</head>
<body>
	<header>
	<div class="navigation">
		<div class=" check  p-1">
			<nav style="backface-visibility: hidden"
				class="nav justify-content fixed-top p-2"> <a
				class=" navbar-brand text-sm-center nav-link " href="#"> <img
				src="assets/images/logo.jpg" width="30" height="30"
				class="d-inline-block align-top"> On Road Assistance
			</a> <a class=" text-sm-right nav-link" href="#">Login</a> <a
				class=" text-sm-right nav-link active" href="#">SignUp</a> <a
				class=" text-sm-right nav-link" href="#" tabindex="-1">Help</a> </nav>
		</div>
	</div>
	</header>

	<div class=" container mt-5">
		<div class="row">
			<div class="col-12 ">
				<div style="padding-top: 50%; border-radius: 25px"
					class=" mt-5 center  justify-content-center mdc-card p-4 align-middle shadow"
					style="width: 300px">
					<div class="card-body ">
						<label class="display-4">Sign Up</label>
						<hr>
						<form:form class="align-middle" modelAttribute="customers"
							onsubmit="return validateForm()">
							<div class="form-group">
								<div class="container">
									<div class="row">
										<div class="col-xl-4 col-md-6">
											<h6 class="form-control">Username</h6>
										</div>
										<div class="col-xl-8 col-md-6">

											<form:input class="form-control" path="customerId"
												id="customerId" autocomplete="off"
												name="customerId" aria-describedby="IdHelp"
												placeholder="123456" data-toggle="popover"
												title="customer Id" data-content="customer Id" />
											<span id="wrongID"></span>
										</div>

									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="container">
									<div class="row">
										<div class="col-xl-4 col-md-6">
											<h6 style="text-align: right" class="form-control">Name</h6>
										</div>
										<div class="col-xl-8 col-md-6">
											<form:input class="form-control" path="customerName"
												id="customerName" autocomplete="off" name="customerName"
												aria-describedby="customerUsernamehelp"
												data-toggle="popover" placeholder=" John Dae..."
												title="Name must be alphabetic"
												data-content="Name doesn't contain any special characters" />
											<span id="wrongName"></span>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="container">
									<div class="row">
										<div class="col-xl-4 col-md-6">
											<h6 style="text-align: right" class="form-control">Email-ID</h6>
										</div>
										<div class="col-xl-8 col-md-6">
											<form:input class="form-control" path="customerEmailId"
												id="customerEmailId" autocomplete="off"
												name="customerEmailId"
												aria-describedby="customerEmailIdhelp" data-toggle="popover"
												placeholder=" abc@gmail.com" title="Valid Email ID"
												data-content="Valid Email ID" />
											<span id="wrongEmailId"></span>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="container">
									<div class="row">
										<div class="col-xl-4 col-md-6">
											<h6 class="form-control mt-1">Gender</h6>
										</div>
										<div class="col-xl-8 col-md-6">
											<div class="mdc-form-field">
												<div class="mdc-radio mt-1">
													<form:radiobutton class="mdc-radio__native-control"
														path="customerGender" value="0" id="male"
														name="custGender" />
													<div class="mdc-radio__background">
														<div class="mdc-radio__outer-circle"></div>
														<div class="mdc-radio__inner-circle"></div>
													</div>
												</div>
												<h6 class="form-control">Male</h6>
												<div class="mdc-radio mt-1">
													<form:radiobutton class="mdc-radio__native-control"
														path="customerGender" value="1" id="female"
														name="custGender" />
													<div class="mdc-radio__background">
														<div class="mdc-radio__outer-circle"></div>
														<div class="mdc-radio__inner-circle"></div>
													</div>
												</div>
												<h6 class="form-control">Female</h6>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="container">
									<div class="row">
										<div class="col-xl-4 col-md-6">
											<h6 style="text-align: right" class="form-control">Birth</h6>
										</div>
										<div class="col-xl-8 col-md-6">
											<form:input type="date" class="form-control"
												path="customerDOB" id="InputDate" name="DOB"
												min="1950-12-31" max="2000-12-31" placeholder="yyyy-mm-dd" />
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="container">
									<div class="row">
										<div class="col-xl-4 col-md-6">
											<h6 style="text-align: right" class="form-control">Contact</h6>
										</div>
										<div class="col-xl-8 col-md-6">
											<form:input class="form-control" path="customerContactNo"
												id="customerContactNo" autocomplete="off"
												name="customerContactNo" aria-describedby="phoneNumberHelp"
												placeholder="+XX-XXXXXXXXXX" data-toggle="popover"
												title="Contact number of 10 digit" data-content="" />
											<span id="wrongContact"></span>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="container">
									<div class="row">
										<div class="col-xl-4 col-md-6">
											<h6 style="text-align: right" class="form-control">Password</h6>
										</div>
										<div class="col-xl-8 col-md-6">
											<form:password path="customerPassword" class="form-control"
												id="password" name="password" placeholder="Password"
												data-toggle="popover" title="password must be alphabetic"
												data-content="" />
											<span id="wrongPassword"></span>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="container">
									<div class="row">
										<div class="col-xl-4 col-md-6">
											<h6 style="text-align: right" class="form-control">Confirm
												Password</h6>
										</div>
										<div class="col-xl-8 col-md-6">
											<form:password path="" class="form-control mt-3"
												id="confirmPassword" name="confirmPassword"
												placeholder="re-enter password" data-toggle="popover"
												title="exactly same as password" data-content="" />
											<span id="wrongConfirmPassword"></span>
										</div>
									</div>
								</div>
							</div>
							<div
								class="mdc-card__primary-action mdc-card__actions--full-bleed"
								tabindex="0">
								<button class="foo-button mdc-button" type="submit"
									class="btn btn-primary">Submit</button>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="assets/scripts/material-components-web.min.js"></script>

	<script type="text/javascript" src="assets/scripts/jquery.min.js"></script>

	<script type="text/javascript"
		src="assets/scripts/jquery-3.3.1.slim.min.js"></script>

	<script type="text/javascript" src="assets/scripts/popper.min.js"></script>

	<script type="text/javascript" src="assets/scripts/bootstrap.min.js"></script>
</body>
</html>