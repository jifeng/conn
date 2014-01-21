# /*!
#  * example/server.coffee
#  * Copyright(c) 2013
#  * Author: jifeng.zjd <jifeng.zjd@alibaba-inc.com>
#  */

conn = require '../'

server = conn.createServer()
server.listen 1723

server.on 'data', (data)->
  console.log data

setInterval ()->
  connections = server.connections
  for k, c of connections
    c.send 'client hell world'
, 1000
