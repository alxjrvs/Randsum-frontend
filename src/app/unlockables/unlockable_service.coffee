class UnlockableService
  constructor: ->

  docs:
    check: 120
    locked: true

  code:
    check: 500
    locked: true

  about:
    check: 10
    locked: true

  all: ->
    [@docs, @code, @about]

  checkRoll: (roll) ->
    angular.forEach @all(), (unlockable) ->
      if roll >= unlockable.check
        unlockable.locked = false

  allLocked: () ->
    result = true
    angular.forEach @all(), (unlockable) ->
      if unlockable.locked == false
        result = false
    result

  unlockAll: ->
    angular.forEach @all(), (unlockable) ->
      unlockable.locked = false

angular.module "randsumFrontend"
  .service "UnlockableService", UnlockableService
