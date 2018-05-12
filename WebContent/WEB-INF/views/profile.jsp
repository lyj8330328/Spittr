<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page session="false"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Profile</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	

  

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- <link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,600,400italic,700' rel='stylesheet' type='text/css'> -->
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="<s:url value="/resources/profile/css/animate.css" /> ">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="<s:url value="/resources/profile/css/icomoon.css" /> ">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="<s:url value="/resources/profile/css/bootstrap.css" /> ">
	<!-- Theme style  -->
	<link rel="stylesheet" href="<s:url value="/resources/profile/css/style.css" /> ">

	<!-- Modernizr JS -->
	<script src="<s:url value="/resources/profile/js/modernizr-2.6.2.min.js" /> "></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body style="background-image: url(<s:url value="/resources/profile/images/bg_img.jpg" />);" >
	
	<div id="fh5co-main">
		<div class="fh5co-tab-wrap">
			<ul class="fh5co-tab-menu">
				<li><a href="#" data-tab="1"><span class="icon icon-glass"></span><span class="menu-text">Profile</span></a></li>
				
			</ul>
			<div class="fh5co-tab-content active" data-content="1">
				<div class="fh5co-content-inner text-center">
					<div class="row row-bottom-padded-sm">
						<div class="col-md-12">
							<figure>
								<img src="<s:url value="/resources/profile/images/profile_img.png" />" alt="Spittr">
							</figure>
							<h1><c:out value="${spitter.username}" /></h1>
							<p>Spittr is a message board-like application.</p>
							<p>Let's write something now.</p>
							<a href="<c:url value="/spitter/login" />">Login</a>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 fh5co-counter">
							<div class="fh5co-number fh5co-left"><c:out value="${spitter.id}" /></div>
							<div class="fh5co-text">
								<h3 class="border-bottom">You are the <c:out value="${spitter.id}" />th user</h3>
								&nbsp;&nbsp;
								<p>Record your every sentence</p>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<footer id="fh5co-footer">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center">
					<small>
						&copy; 2018 Spittr.liyuanjun<span class="fh5co-author">
						
					</small>
				</div>
			</div>
		</footer>
	</div>
	
	<!-- jQuery -->
	<script src="<s:url value="/resources/profile/js/jquery.min.js" /> "></script>
	<!-- jQuery Easing -->
	<script src="<s:url value="/resources/profile/js/jquery.easing.1.3.js" /> "></script>
	<!-- Bootstrap -->
	<script src="<s:url value="/resources/profile/js/bootstrap.min.js" /> "></script>
	<!-- Waypoints -->
	<script src="<s:url value="/resources/profile/js/jquery.waypoints.min.js" /> "></script>
	<!-- Easy PieChart -->
	<script src="<s:url value="/resources/profile/js/jquery.easypiechart.min.js" /> "></script>
	<!-- MAIN JS -->
	<script src="<s:url value="/resources/profile/js/main.js" /> "></script>

	</body>
</html>


