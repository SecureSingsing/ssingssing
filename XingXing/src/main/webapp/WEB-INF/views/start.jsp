<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE=html>
<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="/resources/images/icons/sings.png"/>
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/fonts/iconic/css/material-design-iconic-font.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/vendor/animate/animate.css">
	<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/resources/vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/vendor/animsition/css/animsition.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/vendor/select2/select2.min.css">
	<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/resources/vendor/daterangepicker/daterangepicker.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
	<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('/resources/images/bg-01.jpg');">
			<div class="wrap-login100">

 

				<form class="login100-form validate-form" action="main2">
					<span class="login100-form-logo">
						<img src = "/resources/images/sing.JPG" style="border-radius: 80px;">
					</span>

				
					<span class="login100-form-title p-b-34 p-t-27">
						Input
					</span>


<h3 style="color:white;"> Speed</h3>
					<div class="wrap-input100" data-validate = "Enter Speed">
					
						<input class="input100" type="number" name="given_speed">
						<span class="focus-input100"></span>
					</div>
<h3 style="color:white;">Weight</h3>
					<div class="wrap-input100" data-validate="Enter Weight">
						<input class="input100" type="number" name="given_weight">
						<span class="focus-input100"></span>
					</div>


					<div>
						<div style="float:left; padding: 10px;">
							<button class="login100-form-btn">
								Input
							</button>
						</div>
						
					</div>

					
				</form>



				<div style="float:right; padding: 10px;">
					<button class="login100-form-btn" onclick="location.href='main2'" >
						Back
					</button>
				</div>




			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/jquery/jquery-3.2.1.min.js"/>"> </script>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/animsition/js/animsition.min.js"/>"> </script>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/bootstrap/js/popper.js"/>"> </script>
	<script src="<c:url value="/resources/vendor/bootstrap/jsa/bootstrap.min.js"/>"> </script>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/select2/select2.min.js"/>"> </script>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/daterangepicker/moment.min.js"/>"> </script>
	<script src="<c:url value="/resources/vendor/daterangepicker/daterangepicker.js"/>"> </script>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/countdowntime/countdowntime.js"/>"> </script>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/js/main.js"/>"> </script>

</body>
</html>
