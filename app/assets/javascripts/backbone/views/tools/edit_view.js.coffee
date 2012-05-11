VillageHire.Views.Tools ||= {}

class VillageHire.Views.Tools.EditView extends Backbone.View
  template : JST["backbone/templates/tools/edit"]

  events :
    "submit #edit-tool" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (tool) =>
        @model = tool
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
