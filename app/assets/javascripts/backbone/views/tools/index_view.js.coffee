VillageHire.Views.Tools ||= {}

class VillageHire.Views.Tools.IndexView extends Backbone.View
  template: JST["backbone/templates/tools/index"]

  initialize: () ->
    @options.tools.bind('reset', @addAll)

  addAll: () =>
    @options.tools.each(@addOne)

  addOne: (tool) =>
    view = new VillageHire.Views.Tools.ToolView({model : tool})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(tools: @options.tools.toJSON() ))
    @addAll()

    return this
