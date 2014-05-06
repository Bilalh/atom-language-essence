LanguageEssenceView = require './language-essence-view'

module.exports =
  languageEssenceView: null

  activate: (state) ->
    @languageEssenceView = new LanguageEssenceView(state.languageEssenceViewState)

  deactivate: ->
    @languageEssenceView.destroy()

  serialize: ->
    languageEssenceViewState: @languageEssenceView.serialize()
