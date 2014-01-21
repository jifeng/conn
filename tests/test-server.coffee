e = require 'expect.js'
conn = require '../'

server = conn.createServer()
port = Math.floor(Math.random()* 9000 + 1000)

describe 'proxy', () ->
  before (done)->
    server.listen port, done

  after (done)->
    server.close(done)

  it 'sender message', (done) ->
    e(1).to.eql(1)
    done()







