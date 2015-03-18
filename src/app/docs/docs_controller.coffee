angular.module "randsumFrontend"
  .controller "DocsController",
    ($scope, UnlockableService) ->
      if UnlockableService.allLocked()
        UnlockableService.unlockAll()
