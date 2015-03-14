angular.module "randsumFrontend"
  .controller "MainController",
    (RollerService, $mdToast, $scope) ->
      $scope.rollResult = 0
      $scope.roll =
        numberOfRolls:  1
        diceSides:      20

      $scope.rollAgain = ->
        RollerService.get { numberOfRolls: $scope.roll.numberOfRolls, diceSides: $scope.roll.diceSides }, (result) ->
          result = "You Rolled a #{result.total}"
          $mdToast.showSimple(result)
