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

  describe "unlockAll()", ->
    it 'sets locked = false on each unlockable', ->
      service.unlockAll()
      expect(service.docs.locked).toEqual false
      expect(service.code.locked).toEqual false
      expect(service.about.locked).toEqual false

  describe "checkRoll()", ->
    describe "when given too low a roll", ->
      beforeEach ->
        service.checkRoll(10)

      it "doesn't unlock anything", ->
        expect(service.docs.locked).toEqual true
        expect(service.code.locked).toEqual true
        expect(service.about.locked).toEqual true

    describe "when given a roll higher than an check value", ->
      beforeEach ->
        service.checkRoll(21)

      it "unlocks the relevant unlockables", ->
        expect(service.docs.locked).toEqual true
        expect(service.code.locked).toEqual true
        expect(service.about.locked).toEqual false


