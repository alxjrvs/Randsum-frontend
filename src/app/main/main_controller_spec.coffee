'use strict'

class FakeRollerService
  get: (params, callback) ->
    result = total: 20
    callback(result) if callback
    return result

RollerService = new FakeRollerService()

describe 'MainController', ->
  $scope = null
  beforeEach module 'randsumFrontend'
  beforeEach module ($provide) ->
    $provide.value 'RollerService', RollerService
    null
  beforeEach inject ($rootScope, $controller) ->
    $scope = $rootScope.$new()
    $controller 'MainController', $scope: $scope

  describe '$scope.rollAgain', ->
    it 'sets the $scope.result to the result.total of the RollerService', ->
      $scope.rollAgain()
      expect($scope.result).toEqual 20

  describe 'defaults', ->
    describe '$scope.roll', ->
      it "has a default numberOfRolls = 1", ->
        expect($scope.roll.numberOfRolls).toEqual 1

      it "has a default diceSides = 20", ->
        expect($scope.roll.diceSides).toEqual 20


