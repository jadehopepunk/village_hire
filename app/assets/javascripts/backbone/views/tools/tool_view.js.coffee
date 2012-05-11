VillageHire.Views.Tools ||= {}

class VillageHire.Views.Tools.ToolView extends Backbone.View
  template: JST["backbone/templates/tools/tool"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
