var app = angular.module('myapp',['tm.pagination']);
app.controller('attractionDetailController',function($scope,$http,attractionDetailService){
	var scope = $scope;
	//配置分页基本参数
	$scope.paginationConf = {
		page:{
			pageNum: 1,
			pageSize: 20
		},
		callback:{
			onChange:function(){
				attractionDetailService.getData($scope);
	        }
		}
    };
	$scope.sendComment = function(bookInfoPO){
		attractionDetailService.saveComment(bookInfoPO);
	};
	
});


app.service('attractionDetailService',function($http){
	var me = this;
	this.saveComment = function(bookInfoPO){
		bookInfoPO.status='1';
		$http.post("saveComment.do",bookInfoPO).success(function(response){
			if(response.success == 1){
				alert("Success!");
				location.reload();
			}else{
				alert("Fail!Please try again!");
			}
		});
	};
	
});
