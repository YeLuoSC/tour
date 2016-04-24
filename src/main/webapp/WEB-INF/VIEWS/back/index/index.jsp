<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%String path = request.getContextPath(); %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>欢迎登陆</title>

<link href="<%=path %>/css/back/bootstrap.css" rel="stylesheet">
<link href="<%=path %>/css/back/datepicker3.css" rel="stylesheet">
<%--<link href="<%=path %>/css/back/bootstrap-table.css" rel="stylesheet">--%>
<link href="<%=path %>/css/back/styles.css" rel="stylesheet">
<link href="<%=path %>/css/back/pagination.css" rel="stylesheet">
<link href="<%=path %>/scripts/plugin/DateTimePicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
<script src="<%=path %>/scripts/jquery-1.11.1.min.js"></script>
<script src="<%=path %>/scripts/plugin/ckeditor/ckeditor.js"></script>
<script src="<%=path %>/scripts/back/frame/angular.min.js"></script>
<script src="<%=path %>/scripts/back/frame/bootstrap.min.js"></script>
<script src="<%=path %>/scripts/back/frame/tm.pagination.js"></script>
<script src="<%=path %>/scripts/plugin/DateTimePicker/bootstrap-datetimepicker.min.js"></script>
<%--<script src="http://cdn.bootcss.com/angular.js/1.2.9/angular-route.min.js"></script>
--%>
<script src="<%=path %>/scripts/back/frame/angular-route.min.js"></script>
<script src="<%=path %>/scripts/back/index/index.js"></script>
<script src="<%=path %>/scripts/back/tourtype/tourType.js"></script>
<script src="<%=path %>/scripts/back/line/line.js"></script>
<script src="<%=path %>/scripts/back/attraction/attraction.js"></script>
<%--<script src="<%=path %>/scripts/back/frame/bootstrap-table.js"></script>--%>
<script>
	!function ($) {
		$(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
			$(this).find('em:first').toggleClass("glyphicon-minus");	  
		}); 
		$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
	}(window.jQuery);

	$(window).on('resize', function () {
	  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
	})
	$(window).on('resize', function () {
	  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
	})
	
	$(function(){
		$(".nav.menu").children().on('click',function(e){
			var $this = $(this);
			$.each($this.siblings(),function(index,ele){
				$(ele).removeClass('active');
			});
			$this.addClass('active');
		});
	});
	
</script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>

<body ng-app="myapp"  ng-controller="myCtrl">
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span>后台管理</span></a>
				<ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> User <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-cog"></span> Settings</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
							
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		<ul class="nav menu">
			<li><a href="#tourType"><span class="glyphicon glyphicon-list-alt"></span>旅游类型管理</a></li>
			<li><a href="#line"><span class="glyphicon glyphicon-info-sign"></span>旅游线路管理</a></li>
			<li><a href="#attraction"><span class="glyphicon glyphicon-th"></span>景点管理</a></li>
			<li><a href="import.do"><span class="glyphicon glyphicon-pencil"></span>数据导入</a></li>
			<li><a href="https://github.com/YeLuoSC/"><span class="glyphicon glyphicon-info-sign"></span>关于作者</a></li>
			<%--<li class="parent ">
				<a href="#">
					<span class="glyphicon glyphicon-list"></span> Dropdown <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
				</a>
				<ul class="children collapse" id="sub-item-1">
					<li>
						<a class="" href="#">
							<span class="glyphicon glyphicon-share-alt"></span> Sub Item 1
						</a>
					</li>
					<li>
						<a class="" href="#">
							<span class="glyphicon glyphicon-share-alt"></span> Sub Item 2
						</a>
					</li>
					<li>
						<a class="" href="#">
							<span class="glyphicon glyphicon-share-alt"></span> Sub Item 3
						</a>
					</li>
				</ul>
			</li>
			--%><li role="presentation" class="divider"></li>
			<li><a href="login.html"><span class="glyphicon glyphicon-user"></span> Login Page</a></li>
		</ul>
		<div class="attribution">Template by <a href="http://www.medialoot.com/item/lumino-admin-bootstrap-template/">Medialoot</a></div>
	</div><!--/.sidebar-->
	
	<div ng-view></div>
	
</body>

</html>
