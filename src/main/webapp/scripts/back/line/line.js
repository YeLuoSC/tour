var app = angular.module('myapp',['tm.pagination']);
app.config(function ($httpProvider) {
	    $httpProvider.defaults.headers.common["X-Requested-With"] = "XMLHttpRequest";
	    $httpProvider.defaults.withCredentials = true;
});
app.controller('myCtrl',function($scope,$http,lineService){
	$http.post("line/getTourTypeList.do").success(function(response){
		$scope.tourTypeList = response;
	});
	//配置分页基本参数
	$scope.paginationConf = {
		page:{
			pageNum: 1,
			pageSize: 20
		},
		callback:{
			onChange:function(){
	        	lineService.getData($scope);
	        }
		}
    };
	
	$scope.checkAll = function(isChecked){
		angular.forEach($scope.data,function(item){
			item.isSelected = isChecked;
		});
	};
	
	$scope.update = function(po){
		lineService.update(po);
	}

	$scope.del = function(po,index){
		lineService.del(po,index);
	};
	
	$scope.updateChecked = function(po){
		if(po.isSelected == true)
			po.isSelected = true;
		else
			po.isSelected = false;
	};
	
	$scope.delBatch = function(){
		lineService.delBatch($scope.data);
	};
	
	$scope.showAddWin = function(){
		$("#addWin").modal('show');
	};
	
	$scope.add = function(po){
		lineService.add(po);
		$("#addWin").modal('hide');
	}
});

app.service('lineService',function($http){
	var proData = {};
	var me = this;
	this.getData = function(scope){
		$http.post("line/getTourLine.do",scope.paginationConf.page).success(function(response){
			scope.paginationConf.page.total = response.total;
			scope.data = response.list;
			proData = scope.data;
		});
	};
	
	this.add = function(po){
		po.status='1';
		$http.post("line/addTourLine.do",po).success(function(response){
			if(response != null){
				alert("创建成功!");
				location.reload();
			}else{
				alert("创建失败，请重试！");
			}
		});
	};
	
	this.update = function(po){
		$http.post("line/updateTourLine.do",po).success(function(response){
			if(response != null){
				po.editable = false;
				alert("更新成功!");
			}else{
				alert("更新失败，请重试！");
			}
		});
	};
	
	this.delBatch = function(arr){
		var idArr = new Array();
		angular.forEach(arr, function(po,index,array){
			 //data等价于array[index]
			if(po.isSelected == true){
				idArr.push(po.id);
			}
		});
		if(idArr.length > 0){
			$http.post("line/delTourLine.do",idArr).success(function(response){
				if(response.success != null){
					angular.forEach(arr, function(po,index,array){
						if(po.isSelected == true){
							po.hidden = true;
						}
					});
					alert("删除成功"+response.success+"条记录！");
				}
			});
		}
		
	};
});

app.directive('ckeditor', function() {
	    return {
	        require : '?ngModel',
	        link : function(scope, element, attrs, ngModel) {
	            var ckeditor = CKEDITOR.replace(element[0], {
	                
	            });
	            if (!ngModel) {
	                return;
	            }
	            ckeditor.on('pasteState', function() {
	                scope.$apply(function() {
	                    ngModel.$setViewValue(ckeditor.getData());
	                });
	            });
	            ngModel.$render = function(value) {
	                ckeditor.setData(ngModel.$viewValue);
	            };
	        }
	    };
	});