'use strict'
angular.module('testApp')
  .filter 'range', ->
    (items, attr, min, max) ->
      range = []
      min = parseFloat(min)
      max = parseFloat(max)

      i = 0
      l = items.length
      while i < l
        item = items[i]

        if min and max
          if item[attr] <= max and item[attr] >= min
            range.push item
        else if min and !max
          if item[attr] >= min
            range.push item
        else if !min and max
          if item[attr] <= max
            range.push item
        ++i
      range
