'use strict'

class User
  constructor:() ->
    @data = @empty()

  empty: () ->
    {email: 'schumi@live.ru', errors: {}, signed: true, cart: []}

  set: (user) ->
    @data = user

  md5_hash: (password) ->
    md5(password, 'f6aae8d43655ffabf1d374a62623a463')

  encode: () ->
    user = @data
    user.password = @md5_hash(user.password)
    delete user.password_confirmation
    delete user.errors
    user

angular.module("testApp").service "User", [() -> new User()]
