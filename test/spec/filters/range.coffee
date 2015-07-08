'use strict'

describe 'Filter: range', ->

  # load the filter's module
  beforeEach module 'appApp'

  # initialize a new instance of the filter before each test
  range = {}
  beforeEach inject ($filter) ->
    range = $filter 'range'

  it 'should return the input prefixed with "range filter:"', ->
    text = 'angularjs'
    expect(range text).toBe ('range filter: ' + text)
