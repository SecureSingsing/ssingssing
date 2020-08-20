<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE=html>
<html lang="en">
<head>
<title>User Information</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="/resources/images/icons/sings.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/resources/css/util.css">
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<div class="limiter">
		<div class="container-login100"
			style="background-image: url('/resources/images/bg-01.jpg');">
			<div class="wrap-login100" style="height: 100%;">


				<span class="login100-form-logo"> <img
					src="/resources/images/sing.JPG" style="border-radius: 80px;">
				</span> <span class="login100-form-title p-b-34 p-t-27"> Member </span>




				<%@page
					import="

 javax.sql.DataSource,
 org.springframework.context.ApplicationContext,
 org.springframework.context.support.ClassPathXmlApplicationContext,
 java.sql.Connection
"%>

				<%
					HttpSession session = request.getSession();
				String userID = (String) session.getAttribute("id");

				System.out.println();
				System.out.println(userID);
				System.out.println();

				ApplicationContext context = new ClassPathXmlApplicationContext("datasource.xml");
				DataSource dt = (DataSource) context.getBean("dataSource");
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;

				try {

					conn = dt.getConnection();

					if (conn == null)
						throw new Exception("Database Connection Fail");

					String sql = "select * from test.USERS WHERE userID= ?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, userID);

					rs = pstmt.executeQuery();

					while (rs.next()) {
						String nameS = rs.getString("userNAME");
						String weightS = rs.getString("weight");
						String genderS = rs.getString("gender");
						out.println(
						"<b>ID : </b>" + userID + "<br><br><b>Name : </b> " + nameS + "<br><br><b>Weight : </b>" + weightS + "<br><br><b>Gender : </b>" + genderS + "<br><br>");
					}
				} finally {
					try {
						pstmt.close();
					} catch (Exception ignored) {

					}
					try {
						conn.close();
					} catch (Exception ignored) {

					}
				}
				%>




				<div style="float: left; padding: 10px;">
					<button class="login100-form-btn" onclick="location.href='remove'">
						remove</button>
				</div>


				<div style="float: right; padding: 10px;">
					<button class="login100-form-btn" onclick="location.href='main2'">
						Back</button>
				</div>







			</div>
		</div>
	</div>


	<!--===============================================================================================-->
	<script
		src="<c:url value="/resources/vendor/jquery/jquery-3.2.1.min.js"/>">
		
	</script>
	<!--===============================================================================================-->
	<script
		src="<c:url value="/resources/vendor/animsition/js/animsition.min.js"/>">
		
	</script>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/bootstrap/js/popper.js"/>">
		
	</script>
	<script
		src="<c:url value="/resources/vendor/bootstrap/jsa/bootstrap.min.js"/>">
		
	</script>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/select2/select2.min.js"/>">
		
	</script>
	<!--===============================================================================================-->
	<script
		src="<c:url value="/resources/vendor/daterangepicker/moment.min.js"/>">
		
	</script>
	<script
		src="<c:url value="/resources/vendor/daterangepicker/daterangepicker.js"/>">
		
	</script>
	<!--===============================================================================================-->
	<script
		src="<c:url value="/resources/vendor/countdowntime/countdowntime.js"/>">
		
	</script>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/js/main.js"/>">
		
	</script>

</body>
</html>
