<%@ page contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%String path = request.getContextPath(); %>
<title>Magazine</title>
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
<script src="<%=path %>/scripts/front/frame/bootstrap.min.js"></script>
<script src="<%=path %>/scripts/back/frame/angular.min.js"></script>
<script src="<%=path %>/scripts/back/frame/tm.pagination.js"></script>
<script src="<%=path %>/scripts/front/index/tourInfo.js"></script>

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
<body ng-app="myapp" ng-controller="tourInfoController">
	<!--header-->
	<div class="header-top" id="home">
		<div class="container">
			<div class="header-logo">
				<img src="<%=path %>/images/front/logo.png" alt=""/>
			</div>
			<div class="top-nav">
				<span class="menu"><img src="<%=path %>/images/front/menu-icon.png" alt=""/></span>
				<ul class="nav1">
					<li><a href="index.do">TOURISM </a></li>
					<li><a href="#" class="active">TOURINFO</a></li>
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

	<div style="padding-left:200px;padding-right:200px;background-color:#FCFAE1;">
		<ul class="nav nav-tabs nav-justified" style="border-bottom: 0;">
		<c:forEach var="tourTypePO" items="${list}" varStatus="status">
			<li class="<c:if test='${status.index==0 }'>active</c:if>"><a href="#<c:out value='${tourTypePO.tourTypeId}'></c:out>" data-toggle="tab"  ng-click="tabClick(<c:out value='${tourTypePO.tourTypeId}'></c:out>)"><c:out value="${tourTypePO.tourTypeName}"></c:out></a>
			</li>
		</c:forEach>
	</ul>
	</div>
	

	<div class="buildings" >
		<div class="container" >
		<div class="tab-content">
			<c:forEach var="tourTypePO" items="${list}" varStatus="status">
				<div id="<c:out value='${tourTypePO.tourTypeId}'></c:out>"  class="tab-pane fade <c:if test='${status.index==0 }'>in active</c:if>"
				 <c:if test='${status.index==0 }'>ng-init="init(<c:out value='${tourTypePO.tourTypeId}'></c:out>)"</c:if>>
					<div class="building-one" >
						<div class="col-md-3 building-left" ng-repeat="x in data">
							<a href="detailInfo/getTourLineDetailInfo.do?tourLineId={{x.tourLineId}}"><img src="{{x.thumbnail}}" alt="" /></a>
							<a href="detailInfo/getTourLineDetailInfo.do?tourLineId={{x.tourLineId}}"><h4>{{x.tourLineName}}</h4></a>
							<p>{{x.summary}}</p>
							<div class="build-btn">
								<a href="detailInfo/getTourLineDetailInfo.do?tourLineId={{x.tourLineId}}" class="hvr-shutter-out-horizontal">Read more</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</c:forEach>
		</div>
	<%--<div class="tab-content">

		<div role="tabpanel" class="tab-pan fade in active" id="attractions_food">
			<div class="buildings-top" >
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

		<div role="tabpanel" class="tab-pane fade" id="attractions_Resorts">
			<div class="buildings-top" style="position:absolute;top:200px">
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
    --%></div>
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
					<p>Copyright &copy; 2015.CusTour All rights reserved.</p>
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