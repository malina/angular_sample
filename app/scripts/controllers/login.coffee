'use strict'

class Login
  constructor: ($state, $http, localStorageService, User) ->
    vm = @
    vm.state = $state
    vm.userModel = User
    vm.user = {}
    vm.localStorageService = localStorageService

  submit: () ->
    stroredUser = @localStorageService.get('user')
    if stroredUser.email == @user.email && stroredUser.password == @userModel.md5_hash(@user.password)
      @state.go('search')
    else
      console.log 'bad'

angular.module('testApp').controller 'LoginCtrl', ['$state', '$http', 'localStorageService', 'User', Login]
