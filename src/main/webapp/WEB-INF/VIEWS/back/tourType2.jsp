	<%@ page contentType="text/html;charset=UTF-8"%>
	<%String path = request.getContextPath(); %>
	
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main" >			
	<div class="row">
		<ol class="breadcrumb">
			<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
			<li class="active">旅游类型管理</li>
		</ol>
	</div><!--/.row-->
	
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">旅游类型管理</h1>
			<p>设置旅游项目所属的类型</p>
		</div>
	</div><!--/.row-->
			
	
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<button type="button" class="btn btn-success"  ng-click="showAddWin()">新增</button>
					<button type="button" class="btn btn-danger" ng-click="delBatch()">删除</button>
				</div>
				<div class="panel-body">
					<table class="table table-striped table-hover">
					    <thead>
					    <tr>
					        <th><input type="checkbox"  ng-model="allchecked" ng-change="checkAll(allchecked)"/></th>
					        <th>序号</th>
					        <th>旅游类型名称</th>
					        <th>操作</th>
					    </tr>
					    </thead>
					    <tbody>
					    	<tr ng-repeat="x in data"  ng-hide="x.hidden==true">
					    		<td><input type="checkbox"  ng-click="updateChecked(x)" ng-model="x.isSelected"/></td>
					    		<td>{{$index+1}}</td>
					    		<td><span ng-if="!x.editable">{{x.tourTypeName}}</span><span ng-if="x.editable"><input type="text" class="form-control" ng-model="x.tourTypeName" /></span></td>
					    		<td>
					    			<span class="btn btn-primary btn-xs" title="编辑" ng-click="x.editable=true" ng-if="!x.editable"><i class="glyphicon glyphicon-pencil"></i></span>
					    			<span class="btn btn-primary btn-xs" title="保存" ng-click="update(x)" ng-if="x.editable"><i class="glyphicon glyphicon-floppy-disk"></i></span>
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
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel"></h4>
	      </div>
	      <div class="modal-body">
	        	<form>
					<div class="form-group">
						<label>旅游类型名称：</label>
						<input type="text" class="form-control" placeholder="请输入该旅游类型的名称" ng-model="po.tourTypeName"/>
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
	<form action="export/export.do" id="downloadForm">
			<button type="submit"  style="display:none" id="downloadSubmit"></button>
	</form>
