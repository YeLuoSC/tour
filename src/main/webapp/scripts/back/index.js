var app = angular.module('myapp',['ngRoute','tm.pagination']);
app.config(function ($httpProvider) {
	    $httpProvider.defaults.headers.common["X-Requested-With"] = "XMLHttpRequest";
	    $httpProvider.defaults.withCredentials = true;
});

app.config(function($routeProvider){
	$routeProvider.when('/tourType',{
		templateUrl:'tourType.do',
		controller:'tourTypeController'
	}).when('/line',{
		templateUrl:'line.do',
		controller:'lineController'
	});
});

app.controller('myCtrl',function($scope){

});
