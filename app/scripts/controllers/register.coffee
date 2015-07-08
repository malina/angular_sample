'use strict'

class Register
  constructor: ($state, $http, localStorageService, User) ->
    vm = @
    vm.state = $state
    vm.user = User
    vm.localStorageService = localStorageService


  submit: () ->
    if @user.data.password == @user.data.password_confirmation
      @localStorageService.set('user', @user.encode())
      @state.go('search')
    else
      @user.errors.password = 'Incorrect password confirmation'


angular.module('testApp').controller 'RegisterCtrl', ['$state', '$http', 'localStorageService', 'User', Register]
