class UnlockableService
  constructor: ->

  docs:
    check: 120
    locked: true

  code:
    check: 500
    locked: true

  about:
    check: 21
    locked: true

  all: [@docs, @code, @about]

  unlockAll: ->
    unlockable.locked = false for unlockable in @all

angular.module "randsumFrontend"
  .service "UnlockableService", UnlockableService
