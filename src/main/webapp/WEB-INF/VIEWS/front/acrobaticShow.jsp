<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>News</title>
<%String path = request.getContextPath(); %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Architect Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
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
									<!-- Classie - class helper functions by @desandro https://github.com/desandro/classie -->
									<script src="js/classie.js"></script>
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
	<!--search-scripts-->
						<script>
							new UISearch( document.getElementById( 'sb-search' ) );
						</script>
	<!--//search-scripts-->
	<!--news-->
	<div class="lst">
		<div class="container">
			<div class="latest-top">
				<h3>Latest News</h3>
				<div class="latest-bottom">
					<div class="col-md-6 latest-top-left">
						<img src="<%=path %>/images/front/news-1.jpg" alt="" />
					</div>
					<div class="col-md-6 latest-top-left">
						<h4>Ut tincidunt velit vel efficitur lobortis</h4>
						<p>Nulla facilisi. Sed tincidunt vehicula euismod. Integer et sapien non nibh rhoncus finibus sit amet quis odio. Aliquam varius, dui vitae aliquet laoreet, ligula metus facilisis massa, et tincidunt tellus mi et nisl. Nulla varius, sapien vel rhoncus fringilla, sem dui suscipit est, sed commodo augue sapien eget arcu.Vestibulum non est ex. Curabitur mollis ornare diam</p>
						<div class="latest-btm">
							<div class="col-md-6 latest-btm-left">
								<img src="<%=path %>/images/front/l-3.jpg" alt="" />
							</div>
							<div class="col-md-6 latest-btm-left">
								<img src="<%=path %>/images/front/l-4.jpg" alt="" />
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!--news-->
	<!--new-->
	<div class="new">
		<div class="container">
			<div class="new-top">
				<h3>New Opportunities</h3>
			</div>	
				<div class="news-bottom">
					<div class="col-md-6 news-left">
						<h4>Praesent justo dolor lobortis quis lobortis dignissim pulvinar ac lorem</h4>
						<p>Vestibulum est ex, malesuada in tellus sed, sollicitudin malesuada justo. Donec iaculis neque augue, sed gravida lorem ultrices nec. Morbi fringilla, turpis in porta auctor, nisl ante dapibus mauris, vitae vestibulum felis enim sit amet est. Aenean diam tellus, bibendum at ligula in, tincidunt tempor eros. </p>
						<ul>
							<li><a href="#">Aliquam dapibus tincidunt metus praesent justo dolor lobortis</a></li>
							<li><a href="#">Donec sagittis euismod pured ut perspiciatis unde omnis</a></li>
							<li><a href="#">Edicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas</a></li>
							<li><a href="#">Neque porro quisquam est qui dolorem ipsum quia dolor.</a></li>
						</ul>
					</div>
					<div class="col-md-6 news-left">
						<h4>Nulla mattis congue dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus</h4>
						<p>Maecenas id blandit tellus, volutpat eleifend lorem. In pharetra arcu nisl, quis maximus orci elementum quis. Proin malesuada vehicula purus. Duis nec lorem odio. Praesent quis neque in nulla varius convallis eu et lectus. Integer nisl orci, cursus ut nisi vel, volutpat lacinia justo. Nullam sagittis augue in ligula ornare suscipit. Maecenas nec facilisis sapien. Phasellus condimentum sem quis ligula consectetur, in viverra tellus efficitur.</p>
						<p>In efficitur convallis massa a semper. Fusce id pretium neque. Ut eu lacinia nisl. Sed tincidunt vulputate velit id consectetur. Vivamus quam odio, aliquam dignissim magna a, interdum ornare risus.</p>
					</div>
					<div class="clearfix"></div>
				</div>
		</div>
	</div>
	<!--new-->
	<!--special-->
	<div class="special">
		<div class="container">
			<div class="special-main">
				<h3>Special Proposition</h3>
				<p>Proin aliquet massa ut mi eleifend, id tristique nunc bibendum. Nullam ac velit dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum tincidunt maximus nulla in bibendum. Nullam id risus massa. Nulla tincidunt urna vitae felis consectetur gravida. Mauris aliquam felis sed ligula finibus porttitor.</p>
				<div class="sp-btn">
					<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
				</div>
			</div>
		</div>
	</div>
	<!--special-->
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