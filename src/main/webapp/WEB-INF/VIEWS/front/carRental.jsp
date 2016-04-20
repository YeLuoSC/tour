<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Strange-buildings</title>
<%String path = request.getContextPath(); %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Architect Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="<%=path %>/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="<%=path %>/css/front/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="<%=path %>/css/front/swipebox.css">
<link href="<%=path %>/css/front/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

<script src="<%=path %>/scripts/jquery-1.11.1.min.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="<%=path %>/scripts/front/frame/move-top.js"></script>
<script type="text/javascript" src="<%=path %>/scripts/front/frame/easing.js"></script>
<!---pop-up-box---->
<script src="<%=path %>/scripts/front/frame/jquery.magnific-popup.js" type="text/javascript"></script>
<script src="<%=path %>/scripts/front/frame/owl.carousel.js"></script>
<!---//pop-up-box---->
<script src="<%=path %>/scripts/front/frame/classie.js"></script>
<script src="<%=path %>/scripts/front/frame/uisearch.js"></script>
<script src="<%=path %>/scripts/front/frame/jquery.mixitup.min.js"></script>
<script src="<%=path %>/scripts/front/frame/jquery.swipebox.min.js"></script> 
<script src="<%=path %>/scripts/front/frame/responsiveslides.min.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
<!--start-smoth-scrolling-->
</head>
<body>
	<!--header-->
	<div class="header-top" id="home">
		<div class="container">
			<div class="header-logo">
				<a href="index.html"><img src="<%=path %>/images/front/logo.png" alt=""/></a>
			</div>
			<div class="top-nav">
				<span class="menu"><img src="<%=path %>/images/front/menu-icon.png" alt=""/></span>
				<ul class="nav1">
					<li><a href="index.do">HOME </a></li>
					<li><a href="tourinfo.do">BEIJING TOUR</a></li>
					<li><a href="carRental.do">CAR RENTAL</a></li>
					<li><a href="kungfu.do">KUNGFU SHOW</a></li>
					<li><a href="acrobatic.do">ACROBATIC SHOW</a></li>
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
		<div class="search-box">
			<div id="sb-search" class="sb-search">
				<form>
					<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
					<input class="sb-search-submit" type="submit" value="">
					<span class="sb-icon-search"> </span>
				</form>
			</div>
		</div>
		<div class="header-info-right">
				<div class="header cbp-spmenu-push">
					<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
							<a href="index.do">HOME</a>
							<a href="tourinfo.do">BEIJING TOUR</a>
							<a href="carRental.do">CAR RENTAL</a>
							<a href="kungfu.do">KUNGFU SHOW</a>
							<a href="acrobatic.do">ACROBATIC SHOW</a>
					</nav>
					<!--script-nav -->	
					<script>
						$("span.menu").click(function(){
							$("ul.navigatoin").slideToggle("300" , function(){
							});
						});
					</script>
					<script type="text/javascript">
								jQuery(document).ready(function($) {
									$(".scroll").click(function(event){		
										event.preventDefault();
										$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
									});
								});
					</script>
					<div class="clearfix"> </div>
						<!-- /script-nav -->
									<div class="main">
										<section class="buttonset">
											<button id="showLeftPush"><img src="<%=path %>/images/front/menu.png" /><span>Menu</span></button>
										</section>
									</div>
									<script>
										var	menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
											showLeftPush = document.getElementById( 'showLeftPush' ),
											body = document.body;
							
										showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
									</script>
				</div>
			</div>
	</div>
	<!--//header-->
						<script>
							new UISearch( document.getElementById( 'sb-search' ) );
						</script>
	<!--//search-scripts-->
	<!--buildings-->
	<div class="buildings">
		<div class="container">
			<div class="buildings-top">
				<div class="building-one">
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-1.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-2.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-3.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-5.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="building-one">
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-4.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-5.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-6.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-7.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="building-one">
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-8.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-2.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-5.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-4.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!--buildings-->
	<!--read-->
	<div class="read">
		<div class="container">
			<div class="read-main">
				<div class="col-md-5 read-left">
					<h3>Site Map</h3>
					<div class="read-btm">
						<div class="col-md-4 rd-left">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li><a href="#">Archive</a></li>
								<li><a href="#">Drsign Posts</a></li>
								<li><a href="#">Latest News</a></li>
								<li><a href="#">Footer Demo</a></li>
								<li><a href="#">Just a link</a></li>
								<li><a href="#">Links Demo</a></li>
								<li><a href="#">Advertisement</a></li>
							</ul>
						</div>
						<div class="col-md-4 rd-left">
							<ul>
								<li><a href="#">Privcey</a></li>
								<li><a href="#">Design Articles</a></li>
								<li><a href="#">Drsign Posts</a></li>
								<li><a href="#">Latest News</a></li>
								<li><a href="#">Footer Demo</a></li>
								<li><a href="#">Just a link</a></li>
								<li><a href="#">Links Demo</a></li>
								<li><a href="#">Advertisement</a></li>
							</ul>
						</div>
						<div class="col-md-4 rd-left">
							<ul>
								<li><a href="magazine.html">Magazine</a></li>
								<li><a href="#">Drsign Posts</a></li>
								<li><a href="#">Latest News</a></li>
								<li><a href="#">Footer Demo</a></li>
								<li><a href="#">Just a link</a></li>
								<li><a href="#">Links Demo</a></li>
								<li><a href="#">Advertisement</a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-5 read-left">
					<h3>Dont Miss Read</h3>
					<div class="read-btm">
						<div class="read-one">
							<div class="col-md-3 read-bottom-left">
								<img src="<%=path %>/images/front/read-1.jpg" alt="" />
							</div>
							<div class="col-md-9 read-bottom-right">
								<h4>Captivating Spanish Villa in Port d’Andratx Boasting Exceptional Views</h4>
								<p>Posted on August 14, 2013</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="read-one">
							<div class="col-md-3 read-bottom-left">
								<img src="<%=path %>/images/front/read-1.jpg" alt="" />
							</div>
							<div class="col-md-9 read-bottom-right">
								<h4>Captivating Spanish Villa in Port d’Andratx Boasting Exceptional Views</h4>
								<p>Posted on August 14, 2013</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-2 read-left">
					<h3>Follow Us Here</h3>
					<div class="read-btm follow">
						<ul>
							<li><a href="#" class="twit">423.3k Followers</a></li>
							<li><a href="#" class="fb">6.8m Likes</a></li>
							<li><a href="#" class="d">423k Followers</a></li>
							<li><a href="#" class="p">423k Followers</a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--read-->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-top">
				<div class="col-md-6 footer-left">
					<p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a> - More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a></p>
				</div>
				<div class="col-md-6 footer-right">
					<a href="index.html"><img src="<%=path %>/images/front/lg.png" alt="" /></a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
	<!--footer-->
</body>
</html>