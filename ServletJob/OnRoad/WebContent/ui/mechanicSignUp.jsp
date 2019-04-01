<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <script src="scripts/logsign.js" type="text/javascript"></script>
    <title>Welcome To Assistance Portal</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Alegreya|Alegreya+Sans|IBM+Plex+Mono:400,400i|IBM+Plex+Sans+Condensed:400,400i|IBM+Plex+Sans:100,100i,400,400i,700,700i|IBM+Plex+Serif:400,400i|Merriweather|Merriweather+Sans|Montserrat|Nanum+Myeongjo|Nunito|Nunito+Sans|Quattrocento|Quattrocento+Sans|Roboto|Roboto+Mono|Roboto+Slab');
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
            background-image: url("images/bgimagereal.png");
            -webkit-background-size: cover;
            -moz-background-size: cover;

            -o-background-size: cover;
            background-size: cover;
        }
    </style>
    <script>

        function validateForm() {
            // alert("calling");
            var username = document.getElementById("mechanicId").value;
            var username_regex = /^[0-9]{2,10}$/;
            var name = document.getElementById("mechanicName").value;
            var mechanicName_regex = /^[a-zA-Z]{7,20}$/;
            var emailID = document.getElementById("mechanicEmailId").value;
            var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            var gender = document.getElementsByName("mechanicGender");
            var contact = document.getElementById("mechanicContactNo").value;
            var contact_regex = /^[0-9]{10}$/;
            var pass = document.getElementById("password").value;
            var pass_regex = /^[a-zA-Z]{7,20}$/;
            var confirmPass = document.getElementById("confirmPassword").value;

            if (username.match(username_regex)) {
                document.getElementById("mechanicId").style.borderColor = "green";
                document.getElementById("wrongID").innerHTML = "";
            }
            else {
                document.getElementById("mechanicId").style.borderColor = "red";
                document.getElementById("mechanicId").value = "";
                document.getElementById("wrongID").style.color = "red";

                document.getElementById("wrongID").innerHTML = "*";

                return false;
            }
            if (name.match(mechanicName_regex)) {
                document.getElementById("mechanicName").style.borderColor = "green";
                document.getElementById("wrongName").innerHTML = "";
            }
            else {
                document.getElementById("mechanicName").style.borderColor = "red";
                document.getElementById("mechanicName").value = "";
                document.getElementById("wrongName").style.color = "red";
                document.getElementById("wrongName").innerHTML = "*";

                return false;
            }
            if (emailID.match(mailformat)) {
                document.getElementById("mechanicEmailId").style.borderColor = "green";
                document.getElementById("wrongEmailID").innerHTML = "";
            }
            else {
                document.getElementById("mechanicEmailId").style.borderColor = "red";
                document.getElementById("mechanicEmailId").value = "";

                document.getElementById("wrongEmailID").style.color = "red";
                document.getElementById("wrongEmailID").innerHTML = "*";

                return false;
            }
            if (gender[0].checked) {
                console.log("Male");

            }
            else if (gender[1].checked) {
                console.log("Female")
            }
            else {
                alert("Please Select Your Type");
                return false;
            }
            if (contact.match(contact_regex) && contact.length == 10) {
                document.getElementById("mechanicContactNo").style.borderColor = "green";
                document.getElementById("wrongContact").innerHTML = "";
            }
            else {
                document.getElementById("mechanicContactNo").style.borderColor = "red";
                document.getElementById("mechanicContactNo").value = "";
                document.getElementById("wrongContact").style.color = "red";
                document.getElementById("wrongContact").innerHTML = "*";

                return false;
            }
            if (pass.match(pass_regex)) {
                alert("Password ");
                document.getElementById("password").style.borderColor = "green";
                document.getElementById("wrongPassword").innerHTML = "";
                document.getElementById("confirmPassword").style.borderColor = "green";
                document.getElementById("wrongConfirmPassword").innerHTML = "";
            }
            else {
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

        function showPosition() {
           // alert("calling showPosition()");
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function (position) {
                    document.getElementById("mechanicLocateLatitude").value = position.coords.latitude;
                    document.getElementById("mechanicLocateLongitude").value = position.coords.longitude;

                });
            } else {
                alert("Sorry, your browser does not support HTML5 geolocation.");
            }

        }



    </script>
</head>

<body>
    <header>
        <div class=" navigation">
            <div class=" check  p-1">
                <nav style="backface-visibility: hidden" class="nav  justify-content fixed-top p-2">
                    <a class=" navbar-brand text-sm-center nav-link " href="#">
                        <img src="images/logo.jpg" width="30" height="30" class="d-inline-block align-top"> On Road Assistance</a>
                    <a class=" text-sm-right nav-link" href="#">Login</a>
                    <a class=" text-sm-right nav-link active" href="#">SignUp</a>
                    <a class=" text-sm-right nav-link" href="#" tabindex="-1">Help</a>
                </nav>
            </div>
        </div>
    </header>

    <div class=" container mt-5">
        <div class="row">
            <div class="col-12 ">
                <div style="padding-top: 50%; border-radius: 25px" class=" mt-5 center  justify-content-center mdc-card p-4 align-middle shadow">
                    <div class="card-body ">
                        <label class="display-4">Sign Up</label>
                        <hr>
                        <form class="align-middle" method="post" action="MechanicServlet"  onsubmit="return validateForm()">
                            <div class="form-group">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-xl-4 col-md-6">
                                            <h6 class="form-control">Username</h6>
                                        </div>
                                        <div class="col-xl-8 col-md-6">
                                            <input type="text" class="form-control" id="mechanicId" autocomplete="off" name="mechanicUserId" aria-describedby="mechanicIdHelp"
                                                data-toggle="popover" placeholder=" 123456..." title="username must be numeric"
                                                data-content="username must be numeric">
                                            <span id="wrongID"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-xl-4 col-md-6">
                                            <h6 style="text-align:right" class="form-control">Name</h6>
                                        </div>
                                        <div class="col-xl-8 col-md-6">
                                            <input type="text" class="form-control" id="mechanicName" autocomplete="off" name="mechanicName" aria-describedby="mechanicUsernamehelp"
                                                data-toggle="popover" placeholder=" John Dae..." title="Name must be alphabetic"
                                                data-content="Name must be alphabetic">
                                            <span id="wrongName"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-xl-4 col-md-6">
                                            <h6 class="form-control">Email Id</h6>
                                        </div>
                                        <div class="col-xl-8 col-md-6">
                                            <input type="email" class="form-control" id="mechanicEmailId" autocomplete="off" name="mechanicEmailId" placeholder="abc@mail_id.com "
                                                data-toggle="popover" title="emailID" data-content="Your Email iD">
                                            <span id="wrongEmailID"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="container">
                                    <div class="row">
                                        <div class="col" style="text-align: center">
                                            <h6 class="form-control mt-1">Gender</h6>
                                        </div>
                                        <div class="col">
                                            <div class="mdc-form-field">
                                                <div class="mdc-radio mt-1">
                                                    <input class="mdc-radio__native-control" type="radio" id="male" value="0" name="mechanicGender">
                                                    <div class="mdc-radio__background">
                                                        <div class="mdc-radio__outer-circle"></div>
                                                        <div class="mdc-radio__inner-circle"></div>
                                                    </div>
                                                </div>
                                                <h6 class="form-control">Male</h6>
                                                <div class="mdc-radio mt-1">
                                                    <input class="mdc-radio__native-control" type="radio" value="1" id="female" name="mechanicGender">
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
                                            <h6 style="text-align:right" class="form-control">Birth</h6>
                                        </div>
                                        <div class="col-xl-8 col-md-6">
                                            <input type="date" class="form-control" name="mechanicDob" id="DOB" name="DOB" min="1950-12-31" max="2000-12-31" placeholder="yyyy-mm-dd">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-xl-4 col-md-6">
                                            <h6 style="text-align:right" class="form-control">Contact</h6>
                                        </div>
                                        <div class="col-xl-8 col-md-6">
                                            <input type="tel" class="form-control" id="mechanicContactNo" autocomplete="off" name="mechanicContactNo" aria-describedby="phoneNumberHelp"
                                                placeholder="+XX-XXXXXXXXXX" data-toggle="popover" title="Contact number of 10 digit"
                                                data-content="Valid contact  number of 10 digit">
                                            <span id="wrongContact"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-3 "></div>
                                        <div class="col-7 ">
                                            <button type="button" class="btn-primary" style="text-align: center;width: auto;background-color: #00B2EE;height: auto" onclick="showPosition();"><h6 class="form-control " style="text-align: left">Get Coordinates</h6></button>
                                        </div>
                                        <div class="col-2 "></div>

                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-xl-4 col-md-6">
                                            <h6 style="text-align:right" class="form-control">Latitude</h6>
                                        </div>
                                        <div class="col-xl-8 col-md-6">
                                            <input type="tel" class="form-control" id="mechanicLocateLatitude" readonly name="mechanicLocateLatitude" aria-describedby="locationHelp"
                                                placeholder="" data-toggle="popover" title="Location Help" data-content="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-xl-4 col-md-6">
                                            <h6 style="text-align:right" class="form-control">Longitude</h6>
                                        </div>
                                        <div class="col-xl-8 col-md-6">
                                            <input type="tel" class="form-control" id="mechanicLocateLongitude" readonly name="mechanicLocateLongitude" aria-describedby="LocationHelp"
                                                placeholder="" data-toggle="popover" title="Location Help" data-content="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-xl-4 col-md-6">
                                            <h6 style="text-align:right" class="form-control">Password</h6>
                                        </div>
                                        <div class="col-xl-8 col-md-6">
                                            <input type="password" class="form-control" id="password" name="mechanicPassword" placeholder="Password" data-toggle="popover" title="password must be alphabetic"
                                                data-content="">
                                            <span id="wrongPassword"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-xl-4 col-md-6">
                                            <h6 style="text-align:right" class="form-control">Confirm Password</h6>
                                        </div>
                                        <div class="col-xl-8 col-md-6">
                                            <input type="password" class="form-control mt-3" id="confirmPassword" name="confirmPassword" placeholder="re-enter password"
                                                data-toggle="popover" title="exactly same as password" data-content="">
                                            <span id="wrongConfirmPassword"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mdc-card__primary-action mdc-card__actions--full-bleed" tabindex="0">
                                <button class="foo-button mdc-button" type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer">

    </footer>
    <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>