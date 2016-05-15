<%@ page contentType="text/html;charset=UTF-8"%>
<%String path = request.getContextPath(); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Single</title>
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
<script src="<%=path %>/scripts/front/index/attractionDetail.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
</script>
</head>
<body ng-app="myapp" ng-controller="attractionDetailController">
<div class="header-top" id="home">
	<div class="container">
		<div class="header-logo">
			<img src="<%=path %>/images/front/logo.png" alt=""/>
		</div>
		<div class="top-nav">
			<span class="menu"><img src="<%=path %>/images/front/menu-icon.png" alt=""/></span>
			<ul class="nav1">
				<li><a href="<%=path %>/front/index.do">TOURISM </a></li>
					<li><a href="<%=path %>/front/tourinfo.do">TOURINFO</a></li>
					<li><a href="<%=path %>/front/attraction.do" class="active">ATTRACTIONS</a></li>
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
<!--blog-->

	<div class="blog">
		<div class="container">
			<div class="blog-top">
				<div class="col-md-9 blog-left">
					<div class="blog-main">
						<a class="bg"><c:out value='${attractionPO.attractionName}'></c:out></a>
						<p>City:<c:out value='${attractionPO.cityPO.cityName}'></c:out>  <a href="#">${fn:length(comments)} comments</a></p>
					</div>								
					<div class="blog-main-one">
						<div class="blog-one blog-sng">
							<img src="${attractionPO.thumbnail}" alt="" />
							<p class="sngl"><c:out value='${attractionPO.info}' escapeXml="false"></c:out></p>
						</div>	
						<div class="comments cmt">
								<ul>
									<li><span class="bookmark"> </span><a href="#"><c:out value='${attractionPO.attractionName}'></c:out></a></li>
									<%--<li><span class="clndr"> </span><p>march 13,2014</p></li>
									<li><span class="cmnt"> </span><a href="#">comments</a></li>
								--%></ul>
						</div>	
					</div>	
					<c:forEach var="bookInfoPO" items="${comments}" varStatus="status">
						<div class="comment-list">
							<h5>Written by <a href="#"><c:out value='${bookInfoPO.customerName}'></c:out></a></h5>
							<div class="cmt-list">
								<div class="cmt-left">
									<img src="<%=path %>/images/front/avatar.png" alt="" />
								</div>
								<div class="cmt-right">
									<p><c:out value='${bookInfoPO.customerInfo}'></c:out></p>
								</div>
								<div class="clearfix"></div>
							</div>
						<c:if test="${bookInfoPO.replyInfo !=null}">
							<div class="comment-list">
								<h5>Reply by <a href="#">admin</a></h5>
								<div class="cmt-list">
									<div class="cmt-left">
										<img src="<%=path %>/images/front/avatar.png" alt="" />
									</div>
									<div class="cmt-right">
										<p><c:out value='${bookInfoPO.replyInfo}'></c:out></p>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</c:if>
					</div>
					</c:forEach>
					<div class="related">
							<h3>RELATED POSTS</h3>
							<div class="related-bottom">
								<c:forEach var="attractionPO" items="${otherAttractionList}" varStatus="status">
									<div class="col-md-3 related-left">
										<a href="getAttractionDetailInfo.do?attractionId=<c:out value='${attractionPO.attractionId}'></c:out>">
											<img src="${attractionPO.thumbnail}"/>
										</a>
										<h4><c:out value='${attractionPO.attractionName}'></c:out></h4>
									</div>
								</c:forEach>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="content">
					 		<h3>LEAVE A COMMENT</h3>
					 		<div class="contact-form">
								<form>
									<input type="text" placeholder="Name" ng-model="bookInfo.customerName" required/>
									<input type="text" placeholder="Email" ng-model="bookInfo.email"/>
									<input type="text" placeholder="PhoneNumber" ng-model="bookInfo.phoneNumber"/>
									<input type="text" placeholder="Country" ng-model="bookInfo.fromCountry"/>
									<input type="hidden" value="1" ng-init="bookInfo.bookType='0'"/>
									<input type="hidden" ng-init="bookInfo.relationId=<c:out value='${attractionPO.attractionId}'></c:out>"/>
									<textarea placeholder="Message" ng-model="bookInfo.customerInfo" required></textarea>
									<input type="submit" value="SEND" ng-click="sendComment(bookInfo)"/>
				   				</form>
				   			</div>	
						</div>
				</div>
				<div class="col-md-3 blog-right">
					<%--<div class="categories">
						<h3>CATEGORIES</h3>
						<ul>
							<c:forEach var="tourTypePO" items="${tourTypeList}" varStatus="status">
								<li><a href="<%=path %>/front/tourinfo.do"><c:out value='${tourTypePO.tourTypeName}'></c:out></a></li>
							</c:forEach>
						</ul>
					</div>
					--%><div class="categories">
						<h3>RECENT POSTS</h3>
						<ul>
							<c:forEach var="attractionPO" items="${otherAttractionList}" varStatus="status">
								<li><a href="getAttractionDetailInfo.do?attractionId=<c:out value='${attractionPO.attractionId}'></c:out>">${attractionPO.attractionName}</a></li>
							</c:forEach>
						</ul>
					</div>
					<%--<div class="categories">
						<h3>ARCHIVES</h3>
						<ul>
							<li><a href="#">March 3014</a></li>
							<li><a href="#">May 2014</a></li>
							<li><a href="#">August 2014</a></li>
							<li><a href="#">October 2014</a></li>
						</ul>
					</div>
				--%></div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--blog-->
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