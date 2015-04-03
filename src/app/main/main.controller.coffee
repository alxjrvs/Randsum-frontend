angular.module "randsumFrontend"
  .controller "MainController",
    (RollerService, UnlockableService, $mdToast, $scope) ->
      $scope.roll =
        numberOfRolls:  1
        diceSides:      20

      $scope.docsLocked = ->
        UnlockableService.docs.locked

      $scope.aboutLocked = ->
        UnlockableService.about.locked

      $scope.codeLocked = ->
        UnlockableService.code.locked

      $scope.rollAgain = ->
        $scope.result = 0
        RollerService.get { numberOfRolls: $scope.roll.numberOfRolls, diceSides: $scope.roll.diceSides }, (result) ->
          $scope.result = result.total
          UnlockableService.checkRoll $scope.result
          $mdToast.showSimple(result)
