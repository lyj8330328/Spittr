<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE HTML>
<html >
<head>
<link rel="icon" type="image/png" href="<s:url value="/resources/spittle/assets/img/favicon.ico"/>">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<title>Spittle</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />

<link href="<s:url value="/resources/spittle/assets/css/bootstrap.min.css"/>" rel="stylesheet" />
<link href="<s:url value="/resources/spittle/assets/css/hipster_cards.css"/>" rel="stylesheet" />

<!--     Fonts and icons     -->
<link href="<s:url value="/resources/spittle/assets/css/pe-icon-7-stroke.css"/>" rel="stylesheet" />
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" />
<link
	href='http://fonts.googleapis.com/css?family=Playfair+Display|Raleway:700,100,400|Roboto:400,700|Playfair+Display+SC:400,700'
	rel='stylesheet' type='text/css'>

<style>
.card {
	margin-bottom: 70px;
}
</style>
</head>
<body>

	<div class="wrapper">
		<div class="container">

			<div class="masonry-container">


				<div class="card-box col-md-4 col-sm-6">
					<div class="card card-with-border card-just-text"
						data-background="color" data-color="black">
						<div class="content">
							<h4 class="title">
								"In the end we only <b>regret</b> the chances we didn't take."
							</h4>
							<p class="description">- Hipster Quote</p>
						</div>
					</div>
					<!-- end card -->
				</div>


				<div class="card-box col-md-4 col-sm-6">
					<div class="card text-center" data-background="image"
						data-src="<s:url value="/resources/spittle/assets/img/city-2.png" /> ">
						<h4 class="title title-modern">Spittr</h4>

						<div class="content">
							<div class="price">
								<h6>User</h6>
								<h6><c:out value="${spittle.username}" /></h6>
							</div>
							<p class="description">Title:&nbsp;&nbsp;<c:out value="${spittle.title}" /></p>
							<p class="description">Message:&nbsp;&nbsp;<c:out value="${spittle.message}" /></p>
							<p class="description">Time:&nbsp;&nbsp;<c:out value="${spittle.time}" /></p>
						</div>
						<div class="filter"></div>
						<div class="footer btn-center">
							<button class="btn btn-neutral btn-round btn-fill" onClick="location.href='<c:url value="/spittles?username=${spittle.username}"/>';">返回</button>
						</div>
					</div>
					<!-- end card -->
				</div>


				<div class="card-box col-md-4 col-sm-6">
					<div class="card card-with-border card-just-text"
						data-background="color" data-color="black">
						<div class="content">
							<h4 class="title">
								"In the end we only <b>regret</b> the chances we didn't take."
							</h4>
							<p class="description">- Hipster Quote</p>
						</div>
					</div>
					<!-- end card -->
				</div>
				<div class="card-box col-md-4 col-sm-6">
					<div class="card card-with-border card-just-text"
						data-background="color" data-color="black">
						<div class="content">
							<h4 class="title">
								"In the end we only <b>regret</b> the chances we didn't take."
							</h4>
							<p class="description">- Hipster Quote</p>
						</div>
					</div>
					<!-- end card -->
				</div>
				<div class="card-box col-md-4 col-sm-6">
					<div class="card card-with-border card-just-text"
						data-background="color" data-color="black">
						<div class="content">
							<h4 class="title">
								"In the end we only <b>regret</b> the chances we didn't take."
							</h4>
							<p class="description">- Hipster Quote</p>
						</div>
					</div>
					<!-- end card -->
				</div>








			</div>

		</div>
	</div>
	<!-- end wrapper -->

</body>

<script src="<s:url value="/resources/spittle/assets/js/jquery-1.10.2.js" /> " type="text/javascript"></script>
<script src="<s:url value="/resources/spittle/assets/js/bootstrap.min.js" /> " type="text/javascript"></script>
<script src="<s:url value="/resources/spittle/assets/js/hipster-cards.js" /> "></script>

<!--  Just for demo	 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/masonry/3.3.1/masonry.pkgd.min.js"></script>

<script>

	$().ready(function() {

		var $container = $('.masonry-container');

		doc_width = $(document).width();

		if (doc_width >= 768) {
			$container.masonry({
				itemSelector : '.card-box',
				columnWidth : '.card-box',
				transitionDuration : 0
			});
		} else {
			$('.mas-container').removeClass('mas-container').addClass('row');
		}
	});
</script>

</html>

