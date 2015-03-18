angular.module "randsumFrontend"
  .controller "MainController",
    (RollerService, UnlockableService, $mdToast, $scope) ->
      $scope.roll =
        numberOfRolls:  1
        diceSides:      20

      $scope.rollAgain = ->
        $scope.result = 0
        RollerService.get { numberOfRolls: $scope.roll.numberOfRolls, diceSides: $scope.roll.diceSides }, (result) ->
          $scope.result = result.total
          $mdToast.showSimple(result)
