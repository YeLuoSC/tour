app.controller('tourTypeController',function($scope,$http,tourTypeService){
	
	//配置分页基本参数
	$scope.paginationConf = {
		page:{
			pageNum: 1,
			pageSize: 20
		},
		callback:{
			onChange:function(){
	        	tourTypeService.getData($scope);
	        }
		}
    };
	
	$scope.checkAll = function(isChecked){
		angular.forEach($scope.data,function(item){
			item.isSelected = isChecked;
		});
	};
	
	$scope.update = function(po){
		tourTypeService.update(po);
	}

	$scope.del = function(po,index){
		tourTypeService.del(po,index);
	};
	
	$scope.updateChecked = function(po){
		if(po.isSelected == true)
			po.isSelected = true;
		else
			po.isSelected = false;
	};
	
	$scope.delBatch = function(){
		tourTypeService.delBatch($scope.data);
	};
	
	$scope.showAddWin = function(){
		$("#addWin").modal('show');
	};
	
	$scope.add = function(po){
		tourTypeService.add(po);
		$("#addWin").modal('hide');
	};
	
	$scope.search = function(searchValue){
		if(searchValue != null){
			$scope.paginationConf.page.searchParams=[{"key":"tourTypeName","value":searchValue.tourTypeName}];
		}else{
			$scope.paginationConf.page.searchParams=[];
		}
		tourTypeService.getData($scope);
	};
});

app.service('tourTypeService',function($http){
	var proData = {};
	var me = this;
	this.getData = function(scope){
		$http.post("tourType/getTourType.do",scope.paginationConf.page).success(function(response){
			scope.paginationConf.page.total = response.total;
			scope.data = response.list;
			proData = scope.data;
		});
	};
	
	this.add = function(po){
		po.status='1';
		$http.post("tourType/addTourType.do",po).success(function(response){
			if(response != null){
				alert("创建成功!");
				location.reload();
			}else{
				alert("创建失败，请重试！");
			}
		});
	};
	
	this.update = function(po){
		$http.post("tourType/updateTourType.do",po).success(function(response){
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
			$http.post("tourType/delTourType.do",idArr).success(function(response){
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
