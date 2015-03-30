{CompositeDisposable} = require 'atom'
{$} = require 'atom'

spawn = require('child_process').spawn
JediProvider = require('./jedi-provider')

module.exports =
  provider: null

  activate: (state) ->
    console.log "Activated"

  deactivate: ->
    @provider = null

  provide: ->
    unless @provider?
      @provider = new JediProvider()
    @provider