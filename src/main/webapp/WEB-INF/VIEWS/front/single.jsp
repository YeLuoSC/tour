<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Single</title>
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
<script type="text/javascript" src="<%=path %>/scripts/front/move-top.js"></script>
<script type="text/javascript" src="<%=path %>/scripts/front/easing.js"></script>
<!---pop-up-box---->
<script src="<%=path %>/scripts/front/jquery.magnific-popup.js" type="text/javascript"></script>
<script src="<%=path %>/scripts/front/owl.carousel.js"></script>
<!---//pop-up-box---->
<script src="<%=path %>/scripts/front/classie.js"></script>
<script src="<%=path %>/scripts/front/uisearch.js"></script>
<script src="<%=path %>/scripts/front/jquery.mixitup.min.js"></script>
<script src="<%=path %>/scripts/front/jquery.swipebox.min.js"></script> 
<script src="<%=path %>/scripts/front/responsiveslides.min.js"></script>
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
					<li><a href="index.html">HOME </a></li>
					<li><a href="magazine.html">MAGAZINE</a></li>
					<li><a href="strange-buildings.html">STRANGE BUILDINGS</a></li>
					<li><a href="404.html">ARCHITECTURE</a></li>
					<li><a href="blog.html">BLOG</a></li>
					<li><a href="news.html">NEWS</a></li>
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
							<a href="index.html">HOME</a>
							<a href="magazine.html">MAGAZINE</a>
							<a href="strange-buildings.html">STRANGE BUILDINGS</a>
							<a href="404.html">ARCHITECTURE</a>
							<a href="blog.html">BLOG</a>
							<a href="news.html">NEWS</a>
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
	<!--search-scripts-->
						<script>
							new UISearch( document.getElementById( 'sb-search' ) );
						</script>
	<!--//search-scripts-->
	<!--blog-->
	<div class="blog">
		<div class="container">
			<div class="blog-top">
				<div class="col-md-9 blog-left">
					<div class="blog-main">
						<a class="bg">DUIS AUTE IRURE DOLOR IN REPREHENDERIT IN VOLUPTATE VELIT ESSE</a>
						<p>Post by <a href="#">Admin</a> on saturday, March 02, 2015  <a href="#">5 comments</a></p>
					</div>								
					<div class="blog-main-one">
						<div class="blog-one blog-sng">
							<img src="<%=path %>/images/front/blog-2.jpg" alt="" />
							<p class="sngl">Nunc quis turpis sed tortor viverra dictum. Etiam in cursus libero, ut cursus turpis. Nulla quis nulla pellentesque, commodo lorem sed, ultrices leo. Duis magna mauris, cursus vitae lacus ut, consequat malesuada magna. Duis bibendum pellentesque nisi eget volutpat.
							   Nunc rhoncus ultrices lectus.Aliquam eu dui quis orci ultrices eleifend ut non massa. Duis commodo, ante in vulputate iaculis, libero ex fringilla dolor, id laoreet augue lorem in velit. Aenean vitae risus tempor, suscipit turpis elementum, lacinia justo. Aenean tortor orci, tristique sed libero vel, vulputate elementum lectus.
							   Aliquam dapibus nisi et gravida accumsan. Nam aliquam blandit dapibus. Aliquam bibendum vestibulum neque, eu dapibus nunc congue vitae. Praesent mollis dolor eget elementum auctor.</p>
						</div>	
						<div class="comments cmt">
								<ul>
									<li><span class="bookmark"> </span><a href="#">Uncategorized</a></li>
									<li><span class="clndr"> </span><p>march 13,2014</p></li>
									<li><span class="cmnt"> </span><a href="#">comments</a></li>
								</ul>
						</div>	
					</div>	
					<div class="comment-list">
							<h5>Written by <a href="#">admin</a></h5>
							<div class="cmt-list">
								<div class="cmt-left">
									<img src="<%=path %>/images/front/avatar.png" alt="" />
								</div>
								<div class="cmt-right">
									<p>View all posts by: <a href="#">admin</a></p>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="related">
							<h3>RELATED POSTS</h3>
							<div class="related-bottom">
								<div class="col-md-3 related-left">
									<img src="<%=path %>/images/front/r-1.jpg" alt="" />
									<h4>Cum sociis sere</h4>
								</div>
								<div class="col-md-3 related-left">
									<img src="<%=path %>/images/front/r-2.jpg" alt="" />
									<h4>Vestibulum est ex</h4>
								</div>
								<div class="col-md-3 related-left">
									<img src="<%=path %>/images/front/r-3.jpg" alt="" />
									<h4>Ut tincidunt</h4>
								</div>
								<div class="col-md-3 related-left">
									<img src="<%=path %>/images/front/r-4.jpg" alt="" />
									<h4> Aliquam eu quam</h4>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="content">
					 		<h3>LEAVE A COMMENT</h3>
					 		<div class="contact-form">
								<form>
									<input type="text" placeholder="Name" required/>
									<input type="text" placeholder="Email" required/>
									<input type="text" placeholder="Phone" required/>
									<textarea placeholder="Message"></textarea>
									<input type="submit" value="SEND"/>
				   				</form>
				   			</div>	
						</div>
				</div>
				<div class="col-md-3 blog-right">
					<div class="categories">
						<h3>CATEGORIES</h3>
						<ul>
							<li><a href="#">Aenean tortor orci</a></li>
							<li><a href="#">Duis bibendum pellentesquev</a></li>
							<li><a href="#">Quisque pharetra semper</a></li>
							<li><a href="#">Cras condimentum risus</a></li>
							<li><a href="#"> Quisque id erat sapien</a></li>
						</ul>
					</div>
					<div class="categories">
						<h3>RECENT POSTS</h3>
						<ul>
							<li><a href="#">Fusce id volutpat est</a></li>
							<li><a href="#">Phasellus condimentum odio</a></li>
							<li><a href="#">Donec interdum eros elit</a></li>
							<li><a href="#">Cras condimentum risus</a></li>
							<li><a href="#">Proin sodales diam ac </a></li>
						</ul>
					</div>
					<div class="categories">
						<h3>ARCHIVES</h3>
						<ul>
							<li><a href="#">March 3014</a></li>
							<li><a href="#">May 2014</a></li>
							<li><a href="#">August 2014</a></li>
							<li><a href="#">October 2014</a></li>
						</ul>
					</div>
				</div>
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