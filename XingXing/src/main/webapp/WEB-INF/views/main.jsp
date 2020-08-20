<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE=html>
<html lang="en">
<head>
<title>Main</title>
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
			<div class="wrap-login100">

				<div>
					<%
						//세션값 가져오기
					HttpSession session = request.getSession();
					String id = (String) session.getAttribute("id");
					%>
					<%
						// 이미 로그인된 사용자가 Main.jsp로 넘어오면 쿠키로 사용자를 찾아 세션으로 주입
					// 쿠키값을 세션으로 주입해 , 대신하여 로그인과정을 진행한다.
					Cookie[] cookies = request.getCookies();
					if (cookies != null) {
						for (Cookie cookie : cookies) {
							if (cookie.getName().equals("id")) {
						session.setAttribute("id", cookie.getValue());
							}
						}
					}
					%>



				</div>



				<div>
					<a href="member"> <img src="/resources/images/member.jpg"
						style="border-radius: 80px; width: 50px;" align="right">
					</a>
				</div>
				<br> <br>
				<p>
					<img src="/resources/images/sing.JPG" style="border-radius: 80px;"
						align="left"> <span
						class="login100-form-title p-b-34 p-t-27"> Point<br>
						300
					</span>
				</p>
				
				<div style="float: right; padding: 0px 30px 10px 10px;">
					<button class="login100-form-btn" onclick="location.href='start'">
						start</button>
				</div>

				<b style="color: white; float:left;"><%=id%>님이 로그인 하였습니다</b>






				<div style="width: 100%; height: 200px; overflow: auto">

					<table class="table">
						<tr>
							<th>#</th>
							<th>이름</th>
							<th>생년월일</th>
							<th>포지션</th>
						</tr>
						<tr>
							<td>1</td>
							<td>김영광</td>
							<td>1983-06-28</td>
							<td>골키퍼</td>
						</tr>
						<tr>
							<td>2</td>
							<td>김진현</td>
							<td>1987-07-06</td>
							<td>골키퍼</td>
						</tr>
						<tr>
							<td>3</td>
							<td>정성룡</td>
							<td>1985-01-04</td>
							<td>골키퍼</td>
						</tr>
						<tr>
							<td>4</td>
							<td>윤석영</td>
							<td>1990-02-13</td>
							<td>수비수</td>
						</tr>
						<tr>
							<td>5</td>
							<td>곽태휘</td>
							<td>1981-07-08</td>
							<td>수비수</td>
						</tr>
						<tr>
							<td>6</td>
							<td>오범석</td>
							<td>1984-07-29</td>
							<td>수비수</td>
						</tr>
						<tr>
							<td>7</td>
							<td>김기희</td>
							<td>1989-07-13</td>
							<td>수비수</td>
						</tr>
						<tr>
							<td>8</td>
							<td>정인환</td>
							<td>1986-12-15</td>
							<td>수비수</td>
						</tr>
						<tr>
							<td>9</td>
							<td>신광훈</td>
							<td>1987-03-18</td>
							<td>수비수</td>
						</tr>
						<tr>
							<td>10</td>
							<td>김영권</td>
							<td>1990-02-27</td>
							<td>수비수</td>
						</tr>
						<tr>
							<td>11</td>
							<td>박주호</td>
							<td>1987-01-16</td>
							<td>수비수</td>
						</tr>
						<tr>
							<td>12</td>
							<td>이청용</td>
							<td>1988-07-02</td>
							<td>미드필더</td>
						</tr>
						<tr>
							<td>13</td>
							<td>손흥민</td>
							<td>1992-07-08</td>
							<td>미드필더</td>
						</tr>
						<tr>
							<td>14</td>
							<td>김보경</td>
							<td>1989-10-06</td>
							<td>미드필더</td>
						</tr>
						<tr>
							<td>15</td>
							<td>하대성</td>
							<td>1985-03-02</td>
							<td>미드필더</td>
						</tr>
						<tr>
							<td>16</td>
							<td>이승기</td>
							<td>1988-06-02</td>
							<td>미드필더</td>
						</tr>
						<tr>
							<td>17</td>
							<td>김정우</td>
							<td>1982-05-09</td>
							<td>미드필더</td>
						</tr>
						<tr>
							<td>18</td>
							<td>이근호</td>
							<td>1985-04-11</td>
							<td>미드필더</td>
						</tr>
						<tr>
							<td>19</td>
							<td>박종우</td>
							<td>1989-03-10</td>
							<td>미드필더</td>
						</tr>
						<tr>
							<td>20</td>
							<td>기성용</td>
							<td>1989-01-24</td>
							<td>미드필더</td>
						</tr>
						<tr>
							<td>21</td>
							<td>남태희</td>
							<td>1991-07-03</td>
							<td>미드필더</td>
						</tr>
						<tr>
							<td>22</td>
							<td>김신욱</td>
							<td>1988-04-14</td>
							<td>공격수</td>
						</tr>
						<tr>
							<td>23</td>
							<td>박주영</td>
							<td>1985-07-10</td>
							<td>공격수</td>
						</tr>
					</table>

				</div>

				<br>

				<div>
					<a href="/"> <i class="fa fa-remove" aria-hidden="true"
						style="font-size: 30px; float: right;"></i>
					</a>
				</div>



			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>

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
