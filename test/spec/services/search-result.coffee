'use strict'

describe 'Service: searchResult', ->

  # load the service's module
  beforeEach module 'appApp'

  # instantiate service
  myService = {}
  beforeEach inject (_myService_) ->
    myService = _myService_

  it 'should do something', ->
    expect(!!myService).toBe true
