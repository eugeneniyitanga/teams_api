(function (){
  "use strict"; 
  angular.module("app").controller("teamsCtrl", function($scope, $http){

    $scope.setup = function() {
      $http.get("/api/v2/teams.json").then(function (response) {

        $scope.teams = response.data;
      });
    }

  });
})();