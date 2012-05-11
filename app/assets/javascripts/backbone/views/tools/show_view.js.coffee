VillageHire.Views.Tools ||= {}

class VillageHire.Views.Tools.ShowView extends Backbone.View
  template: JST["backbone/templates/tools/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
