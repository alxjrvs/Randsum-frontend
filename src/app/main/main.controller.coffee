angular.module "randsumFrontend"
  .controller "MainController",
    (RollerService, $scope) ->
      $scope.rollResult = 0
      $scope.roll =
        numberOfRolls:  1
        diceSides:      20

      $scope.rollAgain = ->
        $scope.rollResult = RollerService.roll $scope.roll.numberOfRolls, $scope.roll.diceSides

      $scope.rollAgain()

