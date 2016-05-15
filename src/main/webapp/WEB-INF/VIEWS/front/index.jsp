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
				<img src="<%=path %>/images/front/logo.png" alt=""/>
			</div>
			<div class="top-nav">
				<span class="menu"><img src="<%=path %>/images/front/menu-icon.png" alt=""/></span>
				<ul class="nav1">
					<li><a href="index.do" class="active">TOURISM </a></li>
					<li><a href="tourinfo.do">TOURINFO</a></li>
					<li><a href="attraction.do">ATTRACTIONS</a></li>
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
	<%--<div ng-view></div>--%>
	<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >免费模板</a></div>
	<div class="banner">
		<div class="container">
			<div class="banner-top">
				<h1>THE LATEST NEWS ON DESIGN & ARCHITECTURE</h1>
				<ul>
				 	<li><a class="sub" href="#">Subscribe Now</a></li>
					<li><a class="art" href="#">Best Articles</a></li>
			    </ul>
			</div>	
		</div>
	</div>
	<!--banner-->
	<!--slide-->
	<div class="gallery-cursual">
			<script>
				$(document).ready(function() {
					$("#owl-demo").owlCarousel({
						items : 5,
						lazyLoad : true,
						autoPlay : true,
						pagination : false,
					});
				});
			</script>
		<!-- //requried-jsfiles-for owl -->
		<!-- start content_slider -->
		<div id="owl-demo" class="owl-carousel text-center">
			<div class="item g1 popup-with-zoom-anim" href="#small-dialog">
				<img class="lazyOwl" data-src="<%=path %>/images/front/slide-1.jpg" alt="name">
				<div class="caption">
					<h3>Vanglo House by LWPAC in canada</h3>
					<div class="s-btn">
						<a href="#">READ MORE</a>
					</div>
				</div>
			</div>
			<div class="item g1 popup-with-zoom-anim" href="#small-dialog1">
				<img class="lazyOwl" data-src="<%=path %>/images/front/slide-2.jpg" alt="name">
				<div class="caption">
					<h3>Vanglo House by LWPAC in canada</h3>
					<div class="s-btn">
						<a href="#">READ MORE</a>
					</div>
				</div>
			</div>
			<div class="item g1 popup-with-zoom-anim" href="#small-dialog2">
				<img class="lazyOwl" data-src="<%=path %>/images/front/slide-3.jpg" alt="name">
				<div class="caption">
					<h3>Vanglo House by LWPAC in canada</h3>
					<div class="s-btn">
						<a href="#">READ MORE</a>
					</div>
				</div>
			</div>
			<div class="item g1 popup-with-zoom-anim" href="#small-dialog3">
				<img class="lazyOwl" data-src="<%=path %>/images/front/slide-4.jpg" alt="name">
				<div class="caption">
					<h3>Vanglo House by LWPAC in canada</h3>
					<div class="s-btn">
						<a href="#">READ MORE</a>
					</div>
				</div>
			</div>
			<div class="item g1 popup-with-zoom-anim" href="#small-dialog4">
				<img class="lazyOwl" data-src="<%=path %>/images/front/slide-5.jpg" alt="name">
				<div class="caption">
					<h3>Vanglo House by LWPAC in canada</h3>
					<div class="s-btn">
						<a href="#">READ MORE</a>
					</div>
				</div>
			</div>
			<div class="item g1 popup-with-zoom-anim" href="#small-dialog5">
				<img class="lazyOwl" data-src="<%=path %>/images/front/slide-6.jpg" alt="name">
				<div class="caption">
					<h3>Vanglo House by LWPAC in canada</h3>
					<div class="s-btn">
						<a href="#">READ MORE</a>
					</div>
				</div>
			</div>
			<div class="item g1 popup-with-zoom-anim" href="#small-dialog6">
				<img class="lazyOwl" data-src="<%=path %>/images/front/slide-7.jpg" alt="name">
				<div class="caption">
					<h3>Vanglo House by LWPAC in canada</h3>
					<div class="s-btn">
						<a href="#">READ MORE</a>
					</div>
				</div>
			</div>
			<div class="item g1 popup-with-zoom-anim" href="#small-dialog">
				<img class="lazyOwl" data-src="<%=path %>/images/front/slide-1.jpg" alt="name">
				<div class="caption">
					<h3>Vanglo House by LWPAC in canada</h3>
					<div class="s-btn">
						<a href="#">READ MORE</a>
					</div>
				</div>
			</div>
			<div class="item g1 popup-with-zoom-anim" href="#small-dialog">
				<img class="lazyOwl" data-src="<%=path %>/images/front/slide-2.jpg" alt="name">
				<div class="caption">
					<h3>Vanglo House by LWPAC in canada</h3>
					<div class="s-btn">
						<a href="#">READ MORE</a>
					</div>
				</div>
			</div>
		</div>
		<!--//sreen-gallery-cursual---->
		<!-- caption-popup -->
		<div class="caption-popup">
				<div id="small-dialog" class="mfp-hide innercontent">
					<h4>Vanglo House by LWPAC in canada</h4>
					<img class="img-responsive cap" src="<%=path %>/images/front/slide-1.jpg" title="postname" />
					<p>elit. Etiam sit amet nunc nec magna accumsan ultricies eget a leo. Praesent nec libero aliquet, malesuada nibh et, tincidunt arcu. Aenean porta faucibus nisl. Fusce ultrices nec purus eget consequat. Phasellus pharetra dignissim lacus id rhoncus. In malesuada et mi non mollis. </p>
					<a class="morebtn" href="#">ReadMore</a>
				</div>						  
		</div>
		<div class="caption-popup">
				<div id="small-dialog1" class="mfp-hide innercontent">
					<h4>Vanglo House by LWPAC in canada</h4>
					<img class="img-responsive cap" src="<%=path %>/images/front/slide-2.jpg" title="postname" />
					<p>elit. Etiam sit amet nunc nec magna accumsan ultricies eget a leo. Praesent nec libero aliquet, malesuada nibh et, tincidunt arcu. Aenean porta faucibus nisl. Fusce ultrices nec purus eget consequat. Phasellus pharetra dignissim lacus id rhoncus. In malesuada et mi non mollis. </p>
					<a class="morebtn" href="#">ReadMore</a>
				</div>						  
		</div>
		<div class="caption-popup">
				<div id="small-dialog2" class="mfp-hide innercontent">
					<h4>Vanglo House by LWPAC in canada</h4>
					<img class="img-responsive cap" src="<%=path %>/images/front/slide-3.jpg" title="postname" />
					<p>elit. Etiam sit amet nunc nec magna accumsan ultricies eget a leo. Praesent nec libero aliquet, malesuada nibh et, tincidunt arcu. Aenean porta faucibus nisl. Fusce ultrices nec purus eget consequat. Phasellus pharetra dignissim lacus id rhoncus. In malesuada et mi non mollis. </p>
					<a class="morebtn" href="#">ReadMore</a>
				</div>						  
		</div>
		<div class="caption-popup">
				<div id="small-dialog3" class="mfp-hide innercontent">
					<h4>Vanglo House by LWPAC in canada</h4>
					<img class="img-responsive cap" src="<%=path %>/images/front/slide-4.jpg" title="postname" />
					<p>elit. Etiam sit amet nunc nec magna accumsan ultricies eget a leo. Praesent nec libero aliquet, malesuada nibh et, tincidunt arcu. Aenean porta faucibus nisl. Fusce ultrices nec purus eget consequat. Phasellus pharetra dignissim lacus id rhoncus. In malesuada et mi non mollis. </p>
					<a class="morebtn" href="#">ReadMore</a>
				</div>						  
		</div>
		<div class="caption-popup">
				<div id="small-dialog4" class="mfp-hide innercontent">
					<h4>Vanglo House by LWPAC in canada</h4>
					<img class="img-responsive cap" src="<%=path %>/images/front/slide-5.jpg" title="postname" />
					<p>elit. Etiam sit amet nunc nec magna accumsan ultricies eget a leo. Praesent nec libero aliquet, malesuada nibh et, tincidunt arcu. Aenean porta faucibus nisl. Fusce ultrices nec purus eget consequat. Phasellus pharetra dignissim lacus id rhoncus. In malesuada et mi non mollis. </p>
					<a class="morebtn" href="#">ReadMore</a>
				</div>						  
		</div>
		<div class="caption-popup">
				<div id="small-dialog5" class="mfp-hide innercontent">
					<h4>Vanglo House by LWPAC in canada</h4>
					<img class="img-responsive cap" src="<%=path %>/images/front/slide-6.jpg" title="postname" />
					<p>elit. Etiam sit amet nunc nec magna accumsan ultricies eget a leo. Praesent nec libero aliquet, malesuada nibh et, tincidunt arcu. Aenean porta faucibus nisl. Fusce ultrices nec purus eget consequat. Phasellus pharetra dignissim lacus id rhoncus. In malesuada et mi non mollis. </p>
					<a class="morebtn" href="#">ReadMore</a>
				</div>						  
		</div>
		<div class="caption-popup">
				<div id="small-dialog6" class="mfp-hide innercontent">
					<h4>Vanglo House by LWPAC in canada</h4>
					<img class="img-responsive cap" src="<%=path %>/images/front/slide-7.jpg" title="postname" />
					<p>elit. Etiam sit amet nunc nec magna accumsan ultricies eget a leo. Praesent nec libero aliquet, malesuada nibh et, tincidunt arcu. Aenean porta faucibus nisl. Fusce ultrices nec purus eget consequat. Phasellus pharetra dignissim lacus id rhoncus. In malesuada et mi non mollis. </p>
					<a class="morebtn" href="#">ReadMore</a>
				</div>						  
		</div>
			<!----//fea-video---->
			<script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
				</script>	
		</div>
	<!--slide-->
	<!--address-->

	<!--address-->
	<!--articles-->
	<div class="articles">
		<div class="container" style="padding-top: 10px;">
			<div class="articles-top">
				<div class="col-md-4 articles-left" ng-repeat="x in data">
					<div class="art-one" >
						<a href="detailInfo/getTourLineDetailInfo.do?tourLineId={{x.tourLineId}}"><img src="{{x.thumbnail}}" alt="" /></a>
						<div class="art-btm">
							<a href="detailInfo/getTourLineDetailInfo.do?tourLineId={{x.tourLineId}}""><h3>{{x.tourLineName}}</h3></a>
							<p>{{x.summary}}</p>
							<ul>
								<li><a href="#"><span class="fb"> </span></a><label>21</label></li>
								<li><a href="#"><span class="twit"> </span></a><label>12</label></li>
								<li><a href="#"><span class="g"> </span></a><label>37</label></li>
								<li><a href="#"><span class="p"> </span></a><label>22</label></li>
							</ul>
						</div>
					</div>
					<%--<div class="art-one sponser">
						<a href="single.html"><img src="<%=path %>/images/front/art-3.jpg" alt="" /></a>
						<div class="art-btm">
							<a href="single.html"><h3>Vanglo House By LWPAC in Canda</h3></a>
							<p>Amazing Gabion Ideas for Outdoors A Gabion is a cage box or cylinder filled with rocks, concrete, or sometimes sand and soil and It is a great way to decorate your outdoor</p>
							<ul>
								<li><a href="#"><span class="fb"> </span></a><label>21</label></li>
								<li><a href="#"><span class="twit"> </span></a><label>12</label></li>
								<li><a href="#"><span class="g"> </span></a><label>37</label></li>
								<li><a href="#"><span class="p"> </span></a><label>22</label></li>
							</ul>
							<h6>Sponsered</h6>
						</div>
					</div>
					--%><%--<div class="art-one">
						<a href="single.html"><img src="<%=path %>/images/front/art-5.jpg" alt="" /></a>
						<div class="art-btm">
							<a href="single.html"><h3>Vanglo House By LWPAC in Canda</h3></a>
							<p>Amazing Gabion Ideas for Outdoors A Gabion is a cage box or cylinder filled with rocks, concrete, or sometimes sand and soil and It is a great way to decorate your outdoor</p>
							<ul>
								<li><a href="#"><span class="fb"> </span></a><label>21</label></li>
								<li><a href="#"><span class="twit"> </span></a><label>12</label></li>
								<li><a href="#"><span class="g"> </span></a><label>37</label></li>
								<li><a href="#"><span class="p"> </span></a><label>22</label></li>
							</ul>
						</div>
					</div>
				--%></div>
				<%--<div class="col-md-4 articles-left">
					<div class="art-one">
						<a href="single.html"><img src="<%=path %>/images/front/art-2.jpg" alt="" /></a>
						<div class="art-btm">
							<a href="single.html"><h3>Vanglo House By LWPAC in Canda</h3></a>
							<p>Amazing Gabion Ideas for Outdoors A Gabion is a cage box or cylinder filled with rocks,</p>
							<ul>
								<li><a href="#"><span class="fb"> </span></a><label>21</label></li>
								<li><a href="#"><span class="twit"> </span></a><label>12</label></li>
								<li><a href="#"><span class="g"> </span></a><label>37</label></li>
								<li><a href="#"><span class="p"> </span></a><label>22</label></li>
							</ul>
						</div>
					</div>
					<div class="art-one">
						<a href="single.html"><img src="<%=path %>/images/front/art-4.jpg" alt="" /></a>
						<div class="art-btm">
							<a href="single.html"><h3>Vanglo House By LWPAC in Canda</h3></a>
							<p>Amazing Gabion Ideas for Outdoors A Gabion is a cage box or cylinder filled with rocks, concrete, or sometimes sand and soil and It is a</p>
							<ul>
								<li><a href="#"><span class="fb"> </span></a><label>21</label></li>
								<li><a href="#"><span class="twit"> </span></a><label>12</label></li>
								<li><a href="#"><span class="g"> </span></a><label>37</label></li>
								<li><a href="#"><span class="p"> </span></a><label>22</label></li>
							</ul>
						</div>
					</div>
					<div class="art-one">
						<a href="single.html"><img src="<%=path %>/images/front/art-1.jpg" alt="" /></a>
						<div class="art-btm">
							<a href="single.html"><h3>Vanglo House By LWPAC in Canda</h3></a>
							<p>Amazing Gabion Ideas for Outdoors A Gabion is a cage box or cylinder filled with rocks, concrete, or sometimes sand and soil and It is a great way to decorate your outdoor</p>
							<ul>
								<li><a href="#"><span class="fb"> </span></a><label>21</label></li>
								<li><a href="#"><span class="twit"> </span></a><label>12</label></li>
								<li><a href="#"><span class="g"> </span></a><label>37</label></li>
								<li><a href="#"><span class="p"> </span></a><label>22</label></li>
							</ul>
						</div>
					</div>
				</div>
				--%><%--<div class="col-md-4 articles-left">
					<h4>THE TOP TOURISM</h4>
					<div class="week">
						<div class="col-md-6 week-left">
							<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
								<div class="portfolio-wrapper">		
									<a href="<%=path %>/images/front/week-1.jpg" class="b-link-stripe b-animate-go   swipebox"  title="Image Title">
								     <img src="<%=path %>/images/front/week-1.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 ">
								     	<span></span>
								     	</h2>
								  	 </div></a>
		                			</div>
								</div>
						</div>
						<div class="col-md-6 week-left">
							<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
								<div class="portfolio-wrapper">		
									<a href="<%=path %>/images/front/week-2.jpg" class="b-link-stripe b-animate-go   swipebox"  title="Image Title">
								     <img src="<%=path %>/images/front/week-2.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 ">
								     	<span></span>
								     	</h2>
								  	 </div></a>
		                			</div>
								</div>
						</div>
						<div class="clearfix"></div>
					<div class="week-btm">
						<div class="col-md-4 week-btm-left">
							<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
								<div class="portfolio-wrapper">		
									<a href="<%=path %>/images/front/week-3.jpg" class="b-link-stripe b-animate-go   swipebox"  title="Image Title">
								     <img src="<%=path %>/images/front/week-3.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 ">
								     	<span class="one"></span>
								     	</h2>
								  	 </div></a>
		                			</div>
								</div>
						</div>
						<div class="col-md-4 week-btm-left">
							<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
								<div class="portfolio-wrapper">		
									<a href="<%=path %>/images/front/week-4.jpg" class="b-link-stripe b-animate-go   swipebox"  title="Image Title">
								     <img src="<%=path %>/images/front/week-4.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 ">
								     	<span class="one"></span>
								     	</h2>
								  	 </div></a>
		                			</div>
								</div>
						</div>
						<div class="col-md-4 week-btm-left">
							<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
								<div class="portfolio-wrapper">		
									<a href="<%=path %>/images/front/week-5.jpg" class="b-link-stripe b-animate-go   swipebox"  title="Image Title">
								     <img src="<%=path %>/images/front/week-5.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 ">
								     	<span class="one"></span>
								     	</h2>
								  	 </div></a>
		                			</div>
								</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="week-btm">
						<div class="col-md-4 week-btm-left">
							<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
								<div class="portfolio-wrapper">		
									<a href="<%=path %>/images/front/week-6.jpg" class="b-link-stripe b-animate-go   swipebox"  title="Image Title">
								     <img src="<%=path %>/images/front/week-6.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 ">
								     	<span class="one"></span>
								     	</h2>
								  	 </div></a>
		                			</div>
								</div>
						</div>
						<div class="col-md-4 week-btm-left">
							<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
								<div class="portfolio-wrapper">		
									<a href="<%=path %>/images/front/week-7.jpg" class="b-link-stripe b-animate-go   swipebox"  title="Image Title">
								     <img src="<%=path %>/images/front/week-7.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 ">
								     	<span class="one"></span>
								     	</h2>
								  	 </div></a>
		                			</div>
								</div>
						</div>
						<div class="col-md-4 week-btm-left">
							<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
								<div class="portfolio-wrapper">		
									<a href="<%=path %>/images/front/week-8.jpg" class="b-link-stripe b-animate-go   swipebox"  title="Image Title">
								     <img src="<%=path %>/images/front/week-8.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 ">
								     	<span class="one"></span>
								     	</h2>
								  	 </div></a>
		                			</div>
								</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="week-btm">
						<div class="col-md-4 week-btm-left">
							<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
								<div class="portfolio-wrapper">		
									<a href="<%=path %>/images/front/week-9.jpg" class="b-link-stripe b-animate-go   swipebox"  title="Image Title">
								     <img src="<%=path %>/images/front/week-9.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 ">
								     	<span class="one"></span>
								     	</h2>
								  	 </div></a>
		                			</div>
								</div>
						</div>
						<div class="col-md-4 week-btm-left">
							<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
								<div class="portfolio-wrapper">		
									<a href="<%=path %>/images/front/week-10.jpg" class="b-link-stripe b-animate-go   swipebox"  title="Image Title">
								     <img src="<%=path %>/images/front/week-10.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 ">
								     	<span class="one"></span>
								     	</h2>
								  	 </div></a>
		                			</div>
								</div>
						</div>
						<div class="col-md-4 week-btm-left">
							<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
								<div class="portfolio-wrapper">		
									<a href="<%=path %>/images/front/week-11.jpg" class="b-link-stripe b-animate-go   swipebox"  title="Image Title">
								     <img src="<%=path %>/images/front/week-11.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 ">
								     	<span class="one"></span>
								     	</h2>
								  	 </div></a>
		                			</div>
								</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="art-one">
						<a href="single.html"><img src="<%=path %>/images/front/week-12.jpg" alt="" /></a>
						<div class="art-btm">
							<a href="single.html"><h3>Vanglo House By LWPAC in Canda</h3></a>
							<p>Amazing Gabion Ideas for Outdoors A Gabion is a cage box or cylinder filled with rocks, concrete, or sometimes sand and soil and It is a </p>
							<ul>
								<li><a href="#"><span class="fb"> </span></a><label>21</label></li>
								<li><a href="#"><span class="twit"> </span></a><label>12</label></li>
								<li><a href="#"><span class="g"> </span></a><label>37</label></li>
								<li><a href="#"><span class="p"> </span></a><label>22</label></li>
							</ul>						
						</div>
					</div>
					<div class="art-one">
						<a href="single.html"><img src="<%=path %>/images/front/week-13.jpg" alt="" /></a>
						<div class="art-btm">
							<a href="single.html"><h3>Vanglo House By LWPAC in Canda</h3></a>
							<p>Amazing Gabion Ideas for Outdoors A Gabion is a cage box or cylinder filled with rocks, concrete, or sometimes sand and soil and It is a great way to decorate your outdoor</p>
							<ul>
								<li><a href="#"><span class="fb"> </span></a><label>21</label></li>
								<li><a href="#"><span class="twit"> </span></a><label>12</label></li>
								<li><a href="#"><span class="g"> </span></a><label>37</label></li>
								<li><a href="#"><span class="p"> </span></a><label>22</label></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			--%><div class="clearfix"></div>
			<%--<div class="load">
				<a href="#" class="hvr-shutter-out-horizontal">Load More Articles</a>
			</div>
		--%></div>
	</div>
	</div>
	
	<!--//header-->
	<!--search-scripts-->
					<!--<script src="js/classie.js"></script>-->
					<!--<script src="js/uisearch.js"></script>-->
						<!--<script>-->
							<!--new UISearch( document.getElementById( 'sb-search' ) );-->
						<!--</script>-->
	<!--//search-scripts-->
	<!--banner-->
    
	<!--articles-->
	    <script type="text/javascript">
			jQuery(function($) {
				$(".swipebox").swipebox();
			});
		</script>
<script type="text/javascript">
$(function () {
	
	var filterList = {
	
		init: function () {
		
			// MixItUp plugin
		// http://mixitup.io
		$('#portfoliolist').mixitup({
			targetSelector: '.portfolio',
			filterSelector: '.filter',
			effects: ['fade'],
			easing: 'snap',
			// call the hover effect
			onMixEnd: filterList.hoverEffect()
		});				
	
	},
	
	hoverEffect: function () {
	
		// Simple parallax effect
		$('#portfoliolist .portfolio').hover(
			function () {
				$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
				$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
			},
			function () {
				$(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
				$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
			}		
		);				
	
	}

};

// Run the show!
	filterList.init();
	
});	
</script>
	<!--advertisement-->
	<!--<div class="add">-->
		<!--<div class="container">-->
			<!--<div class="add-top">-->
				<!--<div class="col-md-10 add-left">-->
					<!--<p>Leave your Ads Here</p>-->
				<!--</div>-->
				<!--<div class="col-md-2 add-right">-->
					<!--<img src="/images/front/add.png" alt="" />-->
					<!--<h3>Advertisement</h3>-->
				<!--</div>-->
				<!--<div class="clearfix"></div>-->
			<!--</div>-->
		<!--</div>-->
	<!--</div>-->
	<!--advertisement-->
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
					<p>Copyright &copy; 2015.CusTour All rights reserved.</a></p>
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