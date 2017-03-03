(function (){
  "use strict"; 
  angular.module("app").controller("teamsCtrl", function($scope, $http){

    $scope.setup = function() {
      $http.get("/api/v2/teams.json").then(function (response) {

        $scope.teams = response.data;
      });
    }

    $scope.addTeam = function(creature, name, state, sport){
    var team = {
      creature: creature, 
      name: name, 
      state: state,
      sport: sport 
    };
    $http.post("api/v2/teams.json", team).then(function(response){
      $scope.teams.push(response.data);
    });
  }
      $scope.deleteTeam = function(team, index) {
      $http.delete("/api/v2/teams/" + team.id + ".json").then(function(response){
        $scope.teams.splice(index, 1);
      });
    }

    $scope.updateTeam = function(team) {
      $http.patch("/api/v2/teams/" + team.id + ".json", team).then(function(response) {
        var index = $scope.teams.indexOf(team);
        $scope.teams[index] = response.data;
      });
    }

      $scope.toggleOrder = function(attribute) {
        $scope.orderAttribute = attribute; 
      }

      window.$scope = $scope; 
  });
})();