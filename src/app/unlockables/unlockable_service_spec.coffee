'use strict'

describe 'UnlockableService', ->
  service = null
  beforeEach ->
    module 'randsumFrontend'
    inject (UnlockableService) ->
      service = UnlockableService

  afterEach ->
    service.docs.locked = true
    service.code.locked = true
    service.about.locked = true

  describe "allLocked()", ->
    it 'returns true if all unlockables are locked', ->
      service.docs.locked = true
      service.code.locked = true
      service.about.locked = true
      expect(service.allLocked()).toEqual true

    it 'returns false if any unlockables are unlocked', ->
      service.docs.locked = false
      expect(service.allLocked()).toEqual false

  describe "unlockAll()", ->
    it 'sets locked = false on each unlockable', ->
      service.unlockAll()
      expect(service.docs.locked).toEqual false
      expect(service.code.locked).toEqual false
      expect(service.about.locked).toEqual false

  describe "checkRoll()", ->
    describe "when given too low a roll", ->
      beforeEach ->
        service.checkRoll(1)

      it "doesn't unlock anything", ->
        expect(service.docs.locked).toEqual true
        expect(service.code.locked).toEqual true
        expect(service.about.locked).toEqual true

    describe "when given a roll higher than an check value", ->
      beforeEach ->
        service.checkRoll(11)

      it "unlocks the relevant unlockables", ->
        expect(service.docs.locked).toEqual true
        expect(service.code.locked).toEqual true
        expect(service.about.locked).toEqual false


