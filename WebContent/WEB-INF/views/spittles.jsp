<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<link href="<s:url value="/resources/spittles/css/style.css"/>"
	rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="<s:url value="/resources/spittles/images/fav-icon.png"/>" />
<script type="application/x-javascript">addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);
	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
</script>
<!----webfonts---->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!----//webfonts---->
<!-- Global CSS for the page and tiles -->
<link rel="stylesheet"
	href="<s:url value="/resources/spittles/css/main.css"/>">
<!-- //Global CSS for the page and tiles -->
<!---start-click-drop-down-menu----->
<script src="<s:url value="/resources/spittles/js/jquery.min.js"/>">
</script>

<link rel="stylesheet"
	href="<s:url value="/resources/pubmessage/css/style.css" />">
<link href="<s:url value="/resources/pubmessage/css/popup-box.css" /> "
	rel="stylesheet" type="text/css" media="all" />

<script type="application/x-javascript">addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);
	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<script src="<s:url value="/resources/pubmessage/js/jquery.min.js" /> "></script>
<script
	src="<s:url value="/resources/pubmessage/js/jquery.magnific-popup.js" /> "
	type="text/javascript"></script>
<script type="text/javascript"
	src="<s:url value="/resources/pubmessage/js/modernizr.custom.53451.js" /> "></script>
<script>
	$(document).ready(function() {
		$('.popup-with-zoom-anim').magnificPopup({
			type : 'inline',
			fixedContentPos : false,
			fixedBgPos : true,
			overflowY : 'auto',
			closeBtnInside : true,
			preloader : false,
			midClick : true,
			removalDelay : 300,
			mainClass : 'my-mfp-zoom-in'
		});

	});
</script>
</head>
<body>
	<div class="w3layouts">
		<div class="more">
			<a class="book popup-with-zoom-anim button-isi zoomIn animated"
				data-wow-delay=".5s" href="#small-dialog">添加留言</a>
		</div>

	</div>

	<div class="pop-up">
		<div id="small-dialog-message" class="mfp-hide book-form">
			<h3>留言</h3>
			
		</div>
	</div>
	<div class="pop-up">
		<div id="small-dialog" class="mfp-hide book-form">
			<h3>信息发布</h3>
			<sf:form method="POST" modelAttribute="pubSpittle">
				<p>
					<label for="brand1"><span></span>
					<sf:errors path="title"></sf:errors></label>
				</p>
				<sf:input placeholder="标题" path="title" />
				<p>
				<label for="brand1"><span></span><sf:errors path="message"></sf:errors></label>
				</p>
				<sf:input placeholder="留言" path="message" />			
				<input type="submit" value="发布">
			</sf:form>
		</div>
	</div>
	<!---//End-header---->
	
	<!---start-content---->
	<div class="content">
		<div class="wrap">
			<div id="main" role="main">
				<ul id="tiles" class="spittleList">
					<c:forEach items="${spittleList}" var="spittle">
						<li onClick="location.href='<c:url value="/spittles/spittle?id=${spittle.id}"/>';">
							<div class="post-info">
								<div class="post-basic-info">
									<h3>					
										Title:&nbsp;&nbsp;<c:out value="${spittle.title}" />
									</h3>
									<span><label>Message:&nbsp;&nbsp;<c:out value="${spittle.message}" /></label></span>
									<p>
										Time:&nbsp;&nbsp;<c:out value="${spittle.time}" />
									</p>
									<p>
										User:&nbsp;&nbsp;<c:out value="${spittle.username}" />
									</p>
								</div>
								<div class="post-info-rate-share"></div>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!---//End-content---->
	<!----wookmark-scripts---->
	<script
		src="<s:url value="/resources/spittles/js/jquery.imagesloaded.js"/>"></script>
	<script
		src="<s:url value="/resources/spittles/js/jquery.wookmark.js" />"></script>
	<script type="text/javascript">
		(function($) {
			var $tiles = $('#tiles'),
				$handler = $('li', $tiles),
				$main = $('#main'),
				$window = $(window),
				$document = $(document),
				options = {
					autoResize : true, // This will auto-update the layout when the browser window is resized.
					container : $main, // Optional, used for some extra CSS styling
					offset : 20, // Optional, the distance between grid items
					itemWidth : 280 // Optional, the width of a grid item
				};
			/**
			 * Reinitializes the wookmark handler after all images have loaded
			 */
			function applyLayout() {
				$tiles.imagesLoaded(function() {
					// Destroy the old handler
					if ($handler.wookmarkInstance) {
						$handler.wookmarkInstance.clear();
					}
	
					// Create a new layout handler.
					$handler = $('li', $tiles);
					$handler.wookmark(options);
				});
			}
			/**
			 * When scrolled all the way to the bottom, add more tiles
			 */
			function onScroll() {
				// Check if we're within 100 pixels of the bottom edge of the broser window.
				var winHeight = window.innerHeight ? window.innerHeight : $window.height(), // iphone fix
					closeToBottom = ($window.scrollTop() + winHeight > $document.height() - 100);
	
				if (closeToBottom) {
					// Get the first then items from the grid, clone them, and add them to the bottom of the grid
					var $items = $('li', $tiles),
						$firstTen = $items.slice(0, 10);
					$tiles.append($firstTen.clone());
	
					applyLayout();
				}
			}
			;
	
			// Call the layout function for the first time
			applyLayout();
	
		// Capture scroll event.
		// $window.bind('scroll.wookmark', onScroll);
		})(jQuery);
	</script>
	<!----//wookmark-scripts---->
	<!----start-footer--->
	<div class="footer">
		<p>Copyright &copy; 2018.Spittr.liyuanjun</p>
	</div>
	<!----//End-footer--->
	<!---//End-wrap---->
</body>
</html>




