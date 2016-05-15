<%@ page contentType="text/html;charset=UTF-8"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Architect Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="<%=path %>/css/front/owl.carousel.css" rel="stylesheet">
<link href="<%=path %>/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="<%=path %>/css/front/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="<%=path %>/css/front/swipebox.css">
<link href="<%=path %>/css/front/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href="<%=path %>/css/front/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
<script src="<%=path %>/scripts/jquery-1.11.1.min.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="<%=path %>/scripts/front/frame/move-top.js"></script>
<script type="text/javascript" src="<%=path %>/scripts/front/frame/easing.js"></script>
<!---pop-up-box---->
<script src="<%=path %>/scripts/front/frame/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=path %>/scripts/front/frame/jquery.magnific-popup.js" type="text/javascript"></script>
<script src="<%=path %>/scripts/front/frame/jquery.swipebox.min.js"></script> 
<script src="<%=path %>/scripts/front/frame/jquery.mixitup.min.js"></script>
<script src="<%=path %>/scripts/front/frame/owl.carousel.js"></script>
<script src="<%=path %>/scripts/back/frame/angular.min.js"></script>
<script src="<%=path %>/scripts/back/frame/angular-route.min.js"></script>
<script src="<%=path %>/scripts/back/frame/tm.pagination.js"></script>
<script src="<%=path %>/scripts/front/index/index.js"></script>
<script src="<%=path %>/scripts/front/index/indexInfo.js"></script>
<script src="<%=path %>/scripts/front/index/tourInfo.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
</script>
</head>
<body ng-app="myapp"  ng-controller="myCtrl">
	<!--header-->
	<div class="header-top" id="home">
		<div class="container">
			<div class="header-logo">
				<a href="index.html"><img src="<%=path %>/images/front/logo.png" alt=""/></a>
			</div>
			<div class="top-nav">
				<span class="menu"><img src="<%=path %>/images/front/menu-icon.png" alt=""/></span>
				<ul class="nav1">
					<li><a href="#index">TOURISM </a></li>
					<li><a href="#tourInfo">TOURINFO</a></li>
					<li><a href="#tourInfo">ATTRACTIONS</a></li>
					<li>

						<div class="dropdown">

						<a class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" href="strange-buildings.html">SHOWS</a>

						<ul class="dropdown-menu tourism_dropmenu">
							<li><a style="width: 160px;background:none;" href="kong_fu.html">Kong Fu</a></li>
							<li><a style="width: 160px;background:none;" href="acrobatics.html">Acrobatics</a></li>
						</ul>

						</div>

					</li>
					<li><a href="404.html">CAR RENTALS</a></li>
				</ul>
				<!-- script-for-menu -->
				 <script>
				   $( "span.menu" ).click(function() {
					 $( "ul.nav1" ).slideToggle( 300, function() {
					 // Animation complete.
					  });
					 });
				</script>
				<!-- /script-for-menu -->
			</div>

			<div class="social-icons">
				<ul>
					<li><a href="#"><span class="twit"> </span></a></li>
					<li><a href="#"><span class="fb"> </span></a></li>
					<li><a href="#"><span class="g"> </span></a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>