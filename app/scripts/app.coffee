"use strict"
angular.module("testApp", [
  "ngCookies"
  "ngResource"
  "ngSanitize"
  "ngRoute"
  "ui.router"
  "ngMessages"
  "LocalStorageModule"
]).config([
  "localStorageServiceProvider"
  (localStorageServiceProvider) ->
    localStorageServiceProvider.setPrefix('testApp')
    #.setStorageType('sessionStorage').setNotify true, true
])

.config(['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider, searchResult) ->

  $urlRouterProvider.otherwise("/login")

  $stateProvider
    .state 'login',
      url: '/login'
      templateUrl: 'views/login.html'
      controller: 'LoginCtrl'
      controllerAs: 'vm'
    .state 'register',
      url: '/register'
      templateUrl: 'views/register.html'
      controller: 'RegisterCtrl'
      controllerAs: 'vm'

    .state 'search',
      url: "/search?q"
      templateUrl: 'views/search.html'
      controller: 'SearchCtrl'
      controllerAs: 'vm'
  return
]).run([
  '$state'
  '$cookies'
  '$rootScope'
  'localStorageService'
  ($state, $cookies, $rootScope, localStorageService) ->
    $rootScope.$on '$stateChangeStart', (e, toState, toParams, fromState, fromParams) ->
      unless localStorageService.get('user') || toState.name == 'register'
        console.log localStorageService.get('user')
        if toState.name != 'login'
          $state.go('login')
          e.preventDefault()
      return
    return
])
