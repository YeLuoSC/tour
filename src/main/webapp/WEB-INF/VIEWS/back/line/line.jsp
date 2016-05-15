<%@ page contentType="text/html;charset=UTF-8"%>	
	<script type="text/javascript">
		var basePath = "<%=request.getContextPath() %>";
	</script>
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
						<form class="form-inline">
							<div class="form-group">
								<button type="button" class="btn btn-primary" ng-click="showAddWin()">新增</button>
								<button type="button" class="btn btn-danger" ng-click="delBatch()">删除</button>
							</div>
							
							<div class="form-group"><label>路线名称：</label>
								<input type="text" class="form-control" ng-model="searchValue.tourLineName">
							</div>
							<div class="form-group"><label>旅游类型：</label>
								<select class="form-control" ng-model="searchValue.tourTypeId" ng-options="tourTypePO.tourTypeId as tourTypePO.tourTypeName for tourTypePO in tourTypeList">
									<option value="">--请选择--</option>
								</select>
							</div>
							<button type="button" class="btn btn-primary" ng-click="searchValue={};">清空</button>
							<button type="butotn" class="btn btn-primary" ng-click="search(searchValue)">搜索</button> 
						</form>
						
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
						    			<span class="btn btn-primary btn-xs" title="编辑" ng-click="showUpdateWin(x)" ng-if="!x.editable"><i class="glyphicon glyphicon-pencil"></i></span>
						    			<span class="btn btn-primary btn-xs" title="界面预览" ng-click="preview(x.tourLineId)"><i class="glyphicon glyphicon-eye-open"></i></span>
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
								<select class="form-control" ng-model="po.tourTypeId" ng-options="tourTypePO.tourTypeId as tourTypePO.tourTypeName for tourTypePO in tourTypeList">
									<option value="">--请选择--</option>
								</select>
							</div>
							<div class="form-group">
								<label>价格：</label>
								<input type="text" class="form-control" placeholder="请输入该路线的价格" ng-model="po.price"/>
							</div>
							<div class="form-group">
								<label>出发日期：</label>
								<input type="text" class="form_datetime form-control" ng-model="po.startDate" placeholder="请输入出发日期"/>
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
								<input type="number" class="form-control" ng-model="po.orderId" placeholder="请输入展示时的顺序序号"/>
							</div>
							<div class="form-group">
								<label>缩略图上传:</label>
								<form action="" method="post" enctype="multipart/form-data" id="uploadForm">
									<input type="file" id="upload" name="upload"/>
									<img alt="缩略图" id="thumbnail-return" style="width:0px;height:0px">
									<input type="hidden" id="imgurl" ng-model="po.thumbnail"/>
									<button type="button" id="uploadbtn" class="btn btn-success" ng-click="uploadThumbnail();">上传</button>
								</form>
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
								<label>路线名称：</label>
								<input type="text" class="form-control" placeholder="请输入该路线的名称" ng-model="po.tourLineName"/>
							</div>
							<div class="form-group">
								<label>所属旅游类型：</label>
								<select class="form-control" ng-model="po.tourTypeId" ng-options="tourTypePO.tourTypeId as tourTypePO.tourTypeName for tourTypePO in tourTypeList">
									<option value="">--请选择--</option>
								</select>
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
								<label>缩略图:</label><br>
								<img alt="缩略图" src="{{po.thumbnail}}" style="width:450px;height:300px" id="thumbnailOld">
								<form action="" method="post" enctype="multipart/form-data" id="uploadForm">
									<input type="file" id="updateUpload" name="updateUpload"/>
									<img alt="缩略图" id="thumbnail-return-update" style="width:0px;height:0px">
									<input type="hidden" id="imgurl" ng-model="po.thumbnail"/>
									<button type="button" id="uploadbtn" class="btn btn-success" ng-click="updateThumbnail();">上传</button>
								</form>
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
	    	  	<button type="button" class="btn btn-primary" ng-click="update(po)">保存</button>
	       		<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
	      </div>
	    </div>
	  </div>
	</div>