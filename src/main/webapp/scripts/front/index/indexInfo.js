app.controller('indexInfoController',function($scope,$http,indexInfoService){
	var scope = $scope;
	$http.post("index/getTourLine.do").success(function(response){
		scope.data = response;
	});
	
	//配置分页基本参数
	$scope.paginationConf = {
		page:{
			pageNum: 1,
			pageSize: 20
		},
		callback:{
			onChange:function(){
	        	indexInfoService.getData($scope);
	        }
		}
    };
	
});


app.service('indexInfoService',function($http){
	var proData = {};
	var me = this;
	this.getData = function(scope){
		$http.post("index/getTourLine.do",scope.paginationConf.page).success(function(response){
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
	
	this.getTourLineInfo = function(po,scope){
		$http.post("line/getTourLineInfo.do",po.tourlineid).success(function(response){
			scope.po = response;
		});
	};
	this.update = function(po){
		$http.post("line/updateTourLine.do",po).success(function(response){
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
				idArr.push(po.tourlineid);
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
					location.reload();
				}
			});
		}
		
	};
});
