'use strict'

class FakeRollerService
  get: (params, callback) ->
    result = total: 20
    callback(result) if callback
    return result

RollerService = new FakeRollerService()

describe 'MainController', ->
  $scope = null
  UnblockableService = null
  beforeEach module 'randsumFrontend'
  beforeEach module ($provide) ->
    $provide.value 'RollerService', RollerService
    null
  beforeEach inject ($rootScope, $controller, _UnlockableService_) ->
    UnblockableService = _UnlockableService_
    $scope = $rootScope.$new()
    $controller 'MainController', $scope: $scope

  describe '$scope.rollAgain', ->
    it 'sets the $scope.result to the result.total of the RollerService', ->
      $scope.rollAgain()
      expect($scope.result).toEqual 20

  describe 'docsLocked', ->
    it 'returns the locked status from UnblockableService.docs', ->
      expect($scope.docsLocked()).toEqual true
      UnblockableService.docs.locked = false
      expect($scope.docsLocked()).toEqual false

  describe 'codeLocked', ->
    it 'returns the locked status from UnblockableService.code', ->
      expect($scope.codeLocked()).toEqual true
      UnblockableService.code.locked = false
      expect($scope.codeLocked()).toEqual false

  describe 'aboutLocked', ->
    it 'returns the locked status from UnblockableService.about', ->
      expect($scope.aboutLocked()).toEqual true
      UnblockableService.about.locked = false
      expect($scope.aboutLocked()).toEqual false

  describe 'defaults', ->
    describe '$scope.roll', ->
      it "has a default numberOfRolls = 1", ->
        expect($scope.roll.numberOfRolls).toEqual 1

      it "has a default diceSides = 20", ->
        expect($scope.roll.diceSides).toEqual 20
