class RollerService
  API = null
  @$inject: ['$resource']
  constructor: (@$resource) ->
    API = @$resource 'http://api.randsum.io/v1/roll/:numberOfRolls/d/:diceSides'

  roll: (numberOfRolls, diceSides) ->
    API.get { numberOfRolls: numberOfRolls, diceSides: diceSides }

angular.module "randsumFrontend"
  .service "RollerService", RollerService
