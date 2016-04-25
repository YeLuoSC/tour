<%@ page contentType="text/html;charset=UTF-8"%>	
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">景点管理</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">景点管理</h1>
				<p>设置景点信息，可在前台显示出这些信息</p>
			</div>
		</div><!--/.row-->
				
		
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<button type="button" class="btn btn-primary" ng-click="showAddWin()">新增</button>
						<button type="button" class="btn btn-danger" ng-click="delBatch()">删除</button>
					</div>
					<div class="panel-body">
						<table class="table table-striped table-hover">
						    <thead>
						    <tr>
						        <th><input type="checkbox"  ng-model="allchecked" ng-change="checkAll(allchecked)"/></th>
						        <th>序号</th>
						        <th>景点名称</th>
						        <th>所属城市</th>
						        <th>排序号</th>
						        <th>前台是否可见</th>
						        <th>操作</th>
						    </tr>
						    </thead>
						    <tbody>
						    	<tr ng-repeat="x in data"  ng-hide="x.hidden==true">
						    		<td><input type="checkbox"  ng-click="updateChecked(x)" ng-model="x.isSelected"/></td>
						    		<td>{{$index+1}}</td>
						    		<td>{{x.attractionName}}</td>
						    		<td>{{x.cityPO.cityName}}</td>
									<td>{{x.orderId}}</td>
									<td><span ng-if="x.visiable=='1'">可见</span><span ng-if="x.visiable=='0'">不可见</span></td>
						    		<td>
						    			<span class="btn btn-primary btn-xs" title="编辑" ng-click="showUpdateWin(x)" ng-if="!x.editable"><i class="glyphicon glyphicon-pencil"></i></span>
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
	        <h4 class="modal-title" id="myModalLabel">新增景点信息</h4>
	      </div>
	      <div class="modal-body">
	        	<form>
							<div class="form-group">
								<label>景点名称：</label>
								<input type="text" class="form-control" placeholder="请输入该景点的名称" ng-model="po.attractionName"/>
							</div>
							<div class="form-group">
								<label>所属城市：</label>
								<select class="form-control"  placeholder="请选择"  ng-model="po.cityId" ng-options="cityPO.cityId as cityPO.cityName for cityPO in cityList"></select>
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
								<input type="number" class="form-control" ng-model="po.orderId" placeholder="请输入展示时的顺序序号"/>
							</div>
							<div class="form-group">
								<label>景点简介（限200字）：剩余{{200 - po.summary.length}}字</label>
								<textarea rows="4" cols="20" class="form-control" placeholder="请输入该景点简介的名称" ng-model="po.summary"></textarea>
							</div>
							<div class="form-group">
								<label>景点介绍：</label>
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
	
	<div class="modal fade"  id="updateWin">
	  <div class="modal-dialog" role="document" style="width:800px;">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">更新旅游线路</h4>
	      </div>
	      <div class="modal-body">
	        	<form>
							<div class="form-group">
								<label>景点名称：</label>
								<input type="text" class="form-control" placeholder="请输入该景点的名称" ng-model="po.attractionName"/>
							</div>
							<div class="form-group">
								<label>所属城市：</label>
								<select class="form-control"  placeholder="请选择"  ng-model="po.cityId" ng-options="cityPO.cityId as cityPO.cityName for cityPO in cityList"></select>
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
								<input type="number" class="form-control" ng-model="po.orderId" placeholder="请输入展示时的顺序序号"/>
							</div>
							<div class="form-group">
								<label>景点简介（限200字）：剩余{{200 - po.summary.length}}字</label>
								<textarea rows="4" cols="20" class="form-control" placeholder="请输入该景点简介的名称" ng-model="po.summary"></textarea>
							</div>
							<div class="form-group">
								<label>景点介绍：</label>
								<textarea ckeditor cols="20" rows="10"  ng-model="po.info"></textarea>
							</div>
				</form>
	      </div>
	      <div class="modal-footer">
	    	  	<button type="button" class="btn btn-primary" ng-click="update(po)">保存</button>
	       		<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
	      </div>
	    </div>
	  </div>
	</div>