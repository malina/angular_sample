'use strict'

class Cart
  constructor:(localStorageService) ->
    storedUser = localStorageService.get('user')

    if storedUser.signed
      @data = storedUser.cart
    else
      @data = []

    @add = (item) ->
      @data.push(item)
      @saveToStore()
      return

    @remove = (item) ->
      if _.include(@data, item)
        @data = _.without(@data, item)

      return

    @saveToStore = () ->
      storedUser.cart = @data
      localStorageService.set('user', storedUser)

angular.module("testApp").service "Cart", ['localStorageService', Cart]
