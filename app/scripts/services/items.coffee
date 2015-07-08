'use strict'

class Items
  constructor:($http) ->
    @url = '/items.json'
    @data = []

    @fetchData = () ->
      $http.get(@url)

angular.module("testApp").service "Items", ['$http', Items]
