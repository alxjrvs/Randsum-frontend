class RollerService
  @$inject: ['$resource']
  constructor: (@$resource) ->
    return @$resource 'http://api.randsum.io/v1/roll/:numberOfRolls/d/:diceSides'

angular.module "randsumFrontend"
  .service "RollerService", RollerService
