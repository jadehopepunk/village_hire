class VillageHire.Routers.ToolsRouter extends Backbone.Router
  initialize: (options) ->
    @tools = new VillageHire.Collections.ToolsCollection()
    @tools.reset options.tools

  routes:
    "new"      : "newTool"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newTool: ->
    @view = new VillageHire.Views.Tools.NewView(collection: @tools)
    $("#tools").html(@view.render().el)

  index: ->
    @view = new VillageHire.Views.Tools.IndexView(tools: @tools)
    $("#tools").html(@view.render().el)

  show: (id) ->
    tool = @tools.get(id)

    @view = new VillageHire.Views.Tools.ShowView(model: tool)
    $("#tools").html(@view.render().el)

  edit: (id) ->
    tool = @tools.get(id)

    @view = new VillageHire.Views.Tools.EditView(model: tool)
    $("#tools").html(@view.render().el)
