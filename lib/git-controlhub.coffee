GitControlhubView = require './git-controlhub-view'
{CompositeDisposable} = require 'atom'

CMD_TOGGLE = 'git-controlhub:toggle'
EVT_SWITCH = 'pane-container:active-pane-item-changed'

views = []
view = undefined
pane = undefined
item = undefined

module.exports = GitControlhub =
  activate: (state) ->
    console.log 'GitControlhub: activate'

    atom.commands.add 'atom-workspace', CMD_TOGGLE, => @toggleView()
    atom.workspace.onDidChangeActivePaneItem (item) => @updateViews()
    return

  deactivate: ->
    console.log 'GitControlhub: deactivate'
    return

  toggleView: ->
    console.log 'GitControlhub: toggle'

    unless view and view.active
      view = new GitControlhubView()
      views.push view

      pane = atom.workspace.getActivePane()
      item = pane.addItem view, 0

      pane.activateItem item

    else
      pane.destroyItem item

    return

  updateViews: ->
    activeView = atom.workspace.getActivePane().getActiveItem()
    for v in views when v is activeView
      v.update()
    return

  serialize: ->
