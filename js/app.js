var tasksApp = angular.module('tasksApp', []);

tasksApp.config(['$httpProvider', function($httpProvider) {
        $httpProvider.defaults.useXDomain = true;
        delete $httpProvider.defaults.headers.common['X-Requested-With'];
    }
]);

tasksApp.controller('AppController', ['$scope', '$http' ,'$timeout', function($scope, $http, $timeout) {

    $scope.task = null;
    $scope.tasks = [];
    $scope.tasksCompleted = [];

    $http.get('http://localhost:8000/tasks').success(function(results) {
        $scope.tasks = results.data.uncompleted;
        $scope.tasksCompleted = results.data.completed;
    });

    $scope.add = function() {

        $http.post('http://localhost:8000/tasks', $scope.task).
            success(function(results){
                $scope.tasks.push(results.data);
            });
        $scope.task = null;
    };

    $scope.complete = function(id, index) {
        $scope.completed = $scope.tasks[index];
        $http.put('http://localhost:8000/tasks/' + id + '/complete').
            success(function(results){
                $scope.tasks = results.data.uncompleted;
                $scope.tasksCompleted = results.data.completed;
            });
        $timeout(function() {
            $scope.completed = null;
        }, 5000);
        $scope.tasks.splice(index,1);
    };

}]);