<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%String path = request.getContextPath(); %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>旅游线路管理</title>

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
<script src="<%=path %>/scripts/back/line/line.js"></script>
<script src="<%=path %>/scripts/back/frame/tm.pagination.js"></script>
<script src="<%=path %>/scripts/plugin/DateTimePicker/bootstrap-datetimepicker.min.js"></script>
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
			<li><a href="<%=path %>/back/tourType.do"><span class="glyphicon glyphicon-list-alt"></span>旅游类型管理</a></li>
			<li class="active"><a href="#"><span class="glyphicon glyphicon-info-sign"></span>旅游线路管理</a></li>
			<li><a href="export.do"><span class="glyphicon glyphicon-th"></span>标准模式导出</a></li>
			<li><a href="import.do"><span class="glyphicon glyphicon-pencil"></span>数据导入</a></li>
			<li><a href="https://github.com/YeLuoSC/synch4j"><span class="glyphicon glyphicon-info-sign"></span>关于作者</a></li>
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
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">旅游线路管理</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">旅游线路管理</h1>
				<p>设置旅游线路，可在前台显示出这些信息</p>
			</div>
		</div><!--/.row-->
				
		
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addWin">新增</button>
						<button type="button" class="btn btn-danger" ng-click="delBatch()">删除</button>
					</div>
					<div class="panel-body">
						<table class="table table-striped table-hover">
						    <thead>
						    <tr>
						        <th><input type="checkbox"  ng-model="allchecked" ng-change="checkAll(allchecked)"/></th>
						        <th>序号</th>
						        <th>路线名称</th>
						        <th>所属旅游类型</th>
						        <th>价格($)</th>
						        <th>出发日期</th>
						        <th>排序号</th>
						        <th>前台是否可见</th>
						        <th>操作</th>
						    </tr>
						    </thead>
						    <tbody>
						    	<tr ng-repeat="x in data"  ng-hide="x.hidden==true">
						    		<td><input type="checkbox"  ng-click="updateChecked(x)" ng-model="x.isSelected"/></td>
						    		<td>{{$index+1}}</td>
						    		<td>{{x.tourLineName}}</td>
						    		<td>{{x.tourTypePO.tourTypeName}}</td>
									<td>{{x.price}}</td>
									<td>{{x.startDate}}</td>
									<td>{{x.orderId}}</td>
									<td><span ng-if="x.visiable=='1'">可见</span><span ng-if="x.visiable=='0'">不可见</span></td>
						    		<td>
						    			<span class="btn btn-primary btn-xs" title="编辑" ng-click="x.editable=true" ng-if="!x.editable"><i class="glyphicon glyphicon-pencil"></i></span>
						    			<span class="btn btn-primary btn-xs" title="删除" ng-click="del(x,$index)"><i class="glyphicon glyphicon-remove"></i></span>
						    		</td>
						    	</tr>
						    </tbody>
						</table>
					</div>
				</div>
			</div>
		</div><!--/.row-->

		<!-- Pagination -->
		<tm-pagination conf="paginationConf"></tm-pagination>
		
	</div><!--/.main-->
	<!-- 模态窗口 -->
	<div class="modal fade"  id="addWin">
	  <div class="modal-dialog" role="document" style="width:800px;">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">新增旅游线路</h4>
	      </div>
	      <div class="modal-body">
	        	<form>
							<div class="form-group">
								<label>路线名称：</label>
								<input type="text" class="form-control" placeholder="请输入该路线的名称" ng-model="po.tourLineName"/>
							</div>
							<div class="form-group">
								<label>所属旅游类型：</label>
								<select class="form-control"  placeholder="请选择"  ng-model="po.tourTypeId" ng-options="tourTypePO.tourTypeId as tourTypePO.tourTypeName for tourTypePO in tourTypeList"></select>
							</div>
							<div class="form-group">
								<label>价格：</label>
								<input type="text" class="form-control" placeholder="请输入该路线的价格" ng-model="po.price"/>
							</div>
							<div class="form-group">
								<label>出发日期：</label>
								<input type="text" class="form_datetime form-control" ng-model="po.startDate"/>
								<script type="text/javascript">
									$(".form_datetime").datetimepicker({format: 'yyyy-mm-dd',todayBtn:true,autoclose:true,minView:2});
								</script>
							</div>
							<div class="form-group">
								<label>前台是否可见：</label>
								<label class="radio-inline">
									<input type="radio"  name="visiable" ng-model="po.visiable" ng-value="1"/>可见
								</label>
								<label class="radio-inline">
									<input type="radio"  name="visiable" ng-model="po.visiable" ng-value="0"/>不可见
								</label>
							</div>
							<div class="form-group">
								<label>排序号</label>
								<input type="number" class="form-control" ng-model="po.orderId"/>
							</div>
							<div class="form-group">
								<label>路线简介（限200字）：剩余{{200 - po.summary.length}}字</label>
								<textarea rows="4" cols="20" class="form-control" placeholder="请输入该线路简介的名称" ng-model="po.summary"></textarea>
							</div>
							<div class="form-group">
								<label>线路介绍：</label>
								<textarea ckeditor cols="20" rows="10"  ng-model="po.info"></textarea>
							</div>
				</form>
	      </div>
	      <div class="modal-footer">
	    	  	<button type="button" class="btn btn-primary" ng-click="add(po)">保存</button>
	       		<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
	      </div>
	    </div>
	  </div>
	</div>
</body>

</html>
