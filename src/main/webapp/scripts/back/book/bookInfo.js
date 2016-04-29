app.controller('bookInfoController',function($scope,$http,bookInfoService){
//	$http.post("attraction/getCityList.do").success(function(response){
//		$scope.cityList = response;
//	});
	//配置分页基本参数
	$scope.paginationConf = {
		page:{
			pageNum: 1,
			pageSize: 20
		},
		callback:{
			onChange:function(){
	        	bookInfoService.getData($scope);
	        }
		}
    };
	
	$scope.checkAll = function(isChecked){
		angular.forEach($scope.data,function(item){
			item.isSelected = isChecked;
		});
	};
	
	$scope.update = function(po){
		bookInfoService.update(po);
	}

	$scope.del = function(po,index){
		bookInfoService.del(po,index);
	};
	
	$scope.updateChecked = function(po){
		if(po.isSelected == true)
			po.isSelected = true;
		else
			po.isSelected = false;
	};
	
	$scope.delBatch = function(){
		bookInfoService.delBatch($scope.data);
	};
	
	$scope.add = function(po){
		bookInfoService.add(po);
		$("#addWin").modal('hide');
	}
	
	$scope.showAddWin = function(po){
		$scope.po = {};
		$("#addWin").modal('show');
	}
	
	$scope.showUpdateWin = function(po){
		$("#updateWin").modal('show');
		bookInfoService.getAttractionInfo(po,$scope);
	};
	
	$scope.search = function(searchValue){
		if(searchValue != null){
			$scope.paginationConf.page.searchParams=[{"key":"attractionName","value":searchValue.attractionName}];
		}else{
			$scope.paginationConf.page.searchParams=[];
		}
		bookInfoService.getData($scope);
	};
});

app.service('bookInfoService',function($http){
	var proData = {};
	var me = this;
	this.getData = function(scope){
		$http.post("bookInfo/getBookInfo.do",scope.paginationConf.page).success(function(response){
			scope.paginationConf.page.total = response.total;
			scope.data = response.list;
			proData = scope.data;
		});
	};
	
	this.add = function(po){
		po.status='1';
		$http.post("bookInfo/addBookInfo.do",po).success(function(response){
			if(response != null){
				alert("创建成功!");
				location.reload();
			}else{
				alert("创建失败，请重试！");
			}
		});
	};
	
	this.getBookInfo = function(po,scope){
		$http.post("bookInfo/getBookInfoByBookInfoId.do",po.bookInfoId).success(function(response){
			scope.po = response;
		});
	};
	this.update = function(po){
		$http.post("bookInfo/updateBookInfo.do",po).success(function(response){
			if(response != null){
				alert("更新成功!");
				location.reload();
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
				idArr.push(po.attractionId);
			}
		});
		if(idArr.length > 0){
			$http.post("bookInfo/delBookInfo.do",idArr).success(function(response){
				if(response.success != null){
					angular.forEach(arr, function(po,index,array){
						if(po.isSelected == true){
							po.hidden = true;
						}
					});
					alert("删除成功"+response.success+"条记录！");
					location.reload();
				}
			});
		}
		
	};
});