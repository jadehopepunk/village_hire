VillageHire.Views.Tools ||= {}

class VillageHire.Views.Tools.NewView extends Backbone.View
  template: JST["backbone/templates/tools/new"]

  events:
    "submit #new-tool": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (tool) =>
        @model = tool
        window.location.hash = "/#{@model.id}"

      error: (tool, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
