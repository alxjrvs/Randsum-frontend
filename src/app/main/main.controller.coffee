angular.module "randsumFrontend"
  .controller "MainController",
    (RollerService, $mdToast, $scope) ->
      $scope.rollResult = 0
      $scope.roll =
        numberOfRolls:  1
        diceSides:      20

      $scope.codeUnlock =
        code:
          check: 200
          locked: true
      $scope.docsUnlock =
        docs:
          check: 50
          locked: true
      $scope.aboutUnlock =
        about:
          check: 21
          locked: true

      $scope.rollAgain = ->
        RollerService.get { numberOfRolls: $scope.roll.numberOfRolls, diceSides: $scope.roll.diceSides }, (result) ->
          result = "You Rolled a #{result.total}"
          $mdToast.showSimple(result)
