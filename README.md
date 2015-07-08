#

Установите завизимости:
```shell
npm install
```
```shell
bower install
```

Затем запустите серер
```shell
grunt serve
```


Если нет желания ставить node, grunt ... etc.
В папке dist запустите сервер, на выбор:

### Python 2.x

```shell
$ python -m SimpleHTTPServer 8000
```

### Python 3.x

```shell
$ python -m http.server 8000
```


### Ruby

```shell
$ ruby -rwebrick -e'WEBrick::HTTPServer.new(:Port => 8000, :DocumentRoot => Dir.pwd).start'
```
