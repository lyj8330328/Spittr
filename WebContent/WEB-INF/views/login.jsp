<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
<title>Spitter Login</title>

<link rel="stylesheet" type="text/css"
	href="<s:url value="/resources/login-register/css/demo.css" />" />
<link rel="stylesheet" type="text/css"
	href="<s:url value="/resources/login-register/css/style.css" />" />
<link rel="stylesheet" type="text/css"
	href="<s:url value="/resources/login-register/css/animate-custom.css" />" />
</head>
<body>
	<div class="container">
		<!-- Codrops top bar -->
		<header>
			<h1>
				Login <span><a href="<s:url value="/home" />"> HOME</a></span>
			</h1>

		</header>
		<section>
			<div id="container_demo">
				<!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
				<div id="wrapper">
					<div id="login" class="animate form">


						<sf:form method="POST" modelAttribute="loginSpitter">
							<h1>Log in</h1>
							<p>
								<label for="username" class="uname" data-icon="u"> Your
									username </label>
								<sf:input path="username_l" placeholder="username" />
							</p>
							<p>
								<label for="username" class="uname"> <sf:errors
										path="username_l" />
								</label>
							</p>
							<p>
								<label for="password" class="youpasswd" data-icon="p">
									Your password </label>
								<sf:password path="password_l" placeholder="eg. X8df!90EO" />
							</p>
							<p>
								<label for="password" class="youpasswd"> <sf:errors
										path="password_l"></sf:errors>
								</label>
							</p>

							<p class="keeplogin">
								<input type="checkbox" name="loginkeeping" id="loginkeeping"
									value="loginkeeping" /> <label for="loginkeeping">Keep
									me logged in</label>
							</p>
							<p class="login button">

								<input type="submit" value="Login" />
							</p>
							<p class="change_link">
							Lost Password ? <a
									href="http://wpa.qq.com/msgrd?v=3&uin=973170789&site=qq&menu=yes"
									class="to_register">Click here</a> &nbsp;&nbsp;&nbsp;
								Register <a href="<c:url value="/spitter/register" />"
									class="to_register">Join us</a>	
								
							</p>
						</sf:form>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>