var app = angular.module('myapp',['ngRoute','tm.pagination']);
app.config(function ($httpProvider) {
	    $httpProvider.defaults.headers.common["X-Requested-With"] = "XMLHttpRequest";
	    $httpProvider.defaults.withCredentials = true;
});

/*app.config(function($routeProvider){
	$routeProvider.when('/tourInfo',{
		templateUrl:'tourinfo.do',
		controller:'tourInfoController'
	}).when('/北京半日游',{
		templateUrl:'tourinfo.do',
		controller:'tourInfoController'
	}).when('/北京二日游',{
		templateUrl:'tourinfo.do',
		controller:'tourInfoController'
	}).otherwise({
		templateUrl:'index/indexInfo.do',
		controller:'indexInfoController'
	});
});*/

app.controller('myCtrl',function($scope,$http){
	var scope = $scope;
	$http.post("index/getTourLine.do").success(function(response){
		scope.data = response;
	});
});
