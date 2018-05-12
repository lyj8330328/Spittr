<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Letter - Simple Sign Up Form</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
<!-- Google web font "Open Sans" -->

<link rel="stylesheet" href="<s:url value="/resources/home/css/font-awesome.min.css"/>">
<link rel="stylesheet" href="<s:url value="/resources/home/css/bootstrap.min.css"/>">

<link rel="stylesheet" href="<s:url value="/resources/home/css/demo.css"/>" />
<link rel="stylesheet" href="<s:url value="/resources/home/css/templatemo-style.css"/>">

<script type="text/javascript" src="<s:url value="/resources/home/js/modernizr.custom.86080.js"/>"></script>

</head>

<body>

	<div id="particles-js"></div>

	<ul class="cb-slideshow">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>

	<div class="container-fluid">
		<div class="row cb-slideshow-text-container ">
			<div class="tm-content col-xl-5 col-sm-7 col-xs-7 ml-auto section">
				<header class="mb-5">
					<h1><a href="<s:url value="/spittles2" />"> Spittr</a></h1>
				</header>
				<P class="mb-5">
					<s:message code="spittr.welcome"></s:message>
				</P>
				<div class="col-md-7 col-sm-7 col-xs-7">
					<a href="<c:url value="/spitter/login" />">Login</a> | 
					<a href="<c:url value="/spitter/register" />">Register</a>
				</div>


			</div>
		</div>
		<div class="footer-link">
			<p>Copyright © 2018 YuanJun Li
		</div>
	</div>
</body>

<script type="text/javascript" src="<s:url value="/resources/home/js/particles.js"/>"></script>
<script type="text/javascript" src="<s:url value="/resources/home/js/app.js"/>"></script>
</html>
