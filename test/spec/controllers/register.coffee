'use strict'

describe 'Controller: RegisterCtrl', ->

  # load the controller's module
  beforeEach module 'appApp'

  RegisterCtrl = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    RegisterCtrl = $controller 'RegisterCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(RegisterCtrl.awesomeThings.length).toBe 3
