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
	}).when('/attraction',{
		templateUrl:'attraction.do',
		controller:'attractionController'
	}).when('/book',{
		templateUrl:'bookInfo.do',
		controller:'bookInfoController'
	});
});

app.controller('myCtrl',function($scope){

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