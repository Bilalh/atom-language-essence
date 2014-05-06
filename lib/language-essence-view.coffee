{View} = require 'atom'

module.exports =
class LanguageEssenceView extends View
  @content: ->
    @div class: 'language-essence overlay from-top', =>
      @div "The LanguageEssence package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "language-essence:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "LanguageEssenceView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
