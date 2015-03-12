class RollerService
  API = null
  @$inject: ['$resource']
  constrcutor: (@$resource) ->
    API = @$resource 'http://api.randsum.io/roll/:numberOfRolls/d/:diceSides'

  roll: (numberOfRolls, diceSides) ->
    API.get { numberOfRolls: numberOfRolls, diceSides: diceSides }

angular.module "randsumFrontend"
  .service "RollerService", RollerService
