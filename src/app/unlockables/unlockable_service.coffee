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

  all: ->
    [@docs, @code, @about]

  checkRoll: (roll) ->
    angular.forEach @all(), (unlockable) ->
      if roll >= unlockable.check
        unlockable.locked = false

  unlockAll: ->
    angular.forEach @all(), (unlockable) ->
      unlockable.locked = false

angular.module "randsumFrontend"
  .service "UnlockableService", UnlockableService
