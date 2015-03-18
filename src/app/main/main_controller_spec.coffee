'use strict'

describe 'MainController', ->
  $scope = null
  beforeEach module 'randsumFrontend'
  beforeEach inject ($rootScope, $controller) ->
    $scope = $rootScope.$new()
    $controller 'MainController', $scope: $scope

  describe 'Truth', ->
    it 'is true', ->
      expect(true).toBeTruthy()
