app.controller('attractionController',function($scope,$http,attractionService){
	var scope = $scope;
	$http.post("attraction/getCityList.do").success(function(response){
		$scope.cityList = response;
	});
	//配置分页基本参数
	$scope.paginationConf = {
		page:{
			pageNum: 1,
			pageSize: 20
		},
		callback:{
			onChange:function(){
	        	attractionService.getData($scope);
	        }
		}
    };
	
	$scope.checkAll = function(isChecked){
		angular.forEach($scope.data,function(item){
			item.isSelected = isChecked;
		});
	};
	
	$scope.update = function(po){
		attractionService.update(po);
	}

	$scope.del = function(po,index){
		attractionService.del(po,index);
	};
	
	$scope.updateChecked = function(po){
		if(po.isSelected == true)
			po.isSelected = true;
		else
			po.isSelected = false;
	};
	
	$scope.delBatch = function(){
		attractionService.delBatch($scope.data);
	};
	
	$scope.add = function(po){
		attractionService.add(po);
		$("#addWin").modal('hide');
	}
	
	$scope.showAddWin = function(po){
		$scope.po = {};
		$("#addWin").modal('show');
	}
	
	$scope.showUpdateWin = function(po){
		$("#updateWin").modal('show');
		attractionService.getAttractionInfo(po,$scope);
	};
	
	$scope.search = function(searchValue){
		if(searchValue != null){
			$scope.paginationConf.page.searchParams=[{"key":"attractionName","value":searchValue.attractionName}];
		}else{
			$scope.paginationConf.page.searchParams=[];
		}
		attractionService.getData($scope);
	};
	
	$scope.uploadThumbnail = function(obj){
		$.ajaxFileUpload({
			 fileElementId:'upload', 
			 secureuri: false, //一般设置为false
			 url:basePath + '/common/commonPicUpload.do',
			 dataType:'json', 
			 type:'post',  
			 success: function (data, status){  
				 scope.po.thumbnail=data.success;
				 $("#thumbnail-return").attr("src",data.success).css("width","350px").css("height","400px");
				 $("#uploadbtn").remove();
			 },
           error : function(data){
           //	$.unblockUI();
				alert("上传失败");  
           }
		 });  
//		var args = {
//			    method: 'POST',
//			    url: basePath + '/common/commonPicUpload.do',
//			    data: $scope.uploadtest,
//			    headers: {'Content-Type': undefined},
//			    transformRequest: function(data){
//			    	var formData =new FormData();
//			    	formData.append("upload",data);
//			    	return formData;
//			    }
//		};
//		$http(args);
	};
	
	$scope.updateThumbnail = function(obj){
		$.ajaxFileUpload({
			 fileElementId:'updateUpload', 
			 secureuri: false, //一般设置为false
			 url:basePath + '/common/commonPicUpload.do',
			 dataType:'json', 
			 type:'post',  
			 success: function (data, status){  
				 $("#thumbnailOld").remove();
				 scope.po.thumbnail=data.success;
				 $("#thumbnail-return-update").attr("src",data.success).css("width","350px").css("height","400px");
				 $("#uploadbtn").remove();
			 },
           error : function(data){
           //	$.unblockUI();
				alert("上传失败");  
           }
		 });  
	};
});

app.service('attractionService',function($http){
	var proData = {};
	var me = this;
	this.getData = function(scope){
		$http.post("attraction/getAttraction.do",scope.paginationConf.page).success(function(response){
			scope.paginationConf.page.total = response.total;
			scope.data = response.list;
			proData = scope.data;
		});
	};
	
	this.add = function(po){
		po.status='1';
		$http.post("attraction/addAttraction.do",po).success(function(response){
			if(response != null){
				alert("创建成功!");
				location.reload();
			}else{
				alert("创建失败，请重试！");
			}
		});
	};
	
	this.getAttractionInfo = function(po,scope){
		$http.post("attraction/getAttractionInfo.do",po.attractionId).success(function(response){
			scope.po = response;
		});
	};
	this.update = function(po){
//		$http.post("attraction/updateAttraction.do",po).success(function(response){
//			if(response != null){
//				alert("更新成功!");
//				location.reload();
//			}else{
//				alert("更新失败，请重试！");
//			}
//		});
		alert(po.info);
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
			$http.post("attraction/delAttraction.do",idArr).success(function(response){
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

app.directive('ckeditor', function($window, $q, angularLoad) {
    return {
        require: '?ngModel',
        link: function(scope, elm, attr, ngModel) {
                var ck = CKEDITOR.replace(elm[0]);
                if (!ngModel) return;
                ck.on('instanceReady', function() {
                    ck.setData(ngModel.$viewValue);
                });
                function updateModel() {
                    scope.$apply(function() {
                        ngModel.$setViewValue(ck.getData());
                    });
                }
                ck.on('pasteState', updateModel);
                ck.on('change', updateModel);
                ck.on('key', updateModel);
               

                ngModel.$render = function(value) {
                    ck.setData(ngModel.$viewValue);
                };
        }
    };
});
