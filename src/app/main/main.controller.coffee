angular.module "randsumFrontend"
  .controller "MainController",
    (RollerService, UnlockableService, $scope) ->
      $scope.loading = false
      $scope.roll =
        numberOfRolls:  1
        diceSides:      20

      $scope.rollAgain = ->
        $scope.result = 0
        $scope.loading = true
        RollerService.get { numberOfRolls: $scope.roll.numberOfRolls, diceSides: $scope.roll.diceSides }, (result) ->
          $scope.loading = false
          $scope.result = result.total
          UnlockableService.checkRoll $scope.result
