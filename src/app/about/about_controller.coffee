angular.module "randsumFrontend"
  .controller "AboutController",
    ($scope, UnlockableService) ->
      if UnlockableService.allLocked()
        UnlockableService.unlockAll()
