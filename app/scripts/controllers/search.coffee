'use strict'

class Search
  constructor: ($filter, Items, localStorageService, User, Cart) ->
    vm = @
    vm.filterService = $filter
    vm.items = []
    vm.filteredItems = []
    vm.cart = Cart
    vm.colors = ['red', 'white', 'black', 'blue', 'yellow', 'green'];

    Items.fetchData().success (data) ->
      vm.items = data
      vm.filteredItems = data

  addToCart: (item) ->
    @cart.add item

  filter: ()->
    @filteredItems = _.filter(@filteredItems, @query)

  filterRange: (predicate, range)->
    @filteredItems = @filterService('range')(@filteredItems, predicate, range.min, range.max)

  resetFilter: () ->
    @filteredItems = @items
    @query = {}
    @priceRange = {}
    @issueDateRange = {}


angular.module('testApp').controller 'SearchCtrl', ['$filter', 'Items', 'localStorageService', 'User', 'Cart', Search]
