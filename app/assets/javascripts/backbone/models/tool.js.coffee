class VillageHire.Models.Tool extends Backbone.Model
  paramRoot: 'tool'

  defaults:
    code: null
    name: null
    description: null

class VillageHire.Collections.ToolsCollection extends Backbone.Collection
  model: VillageHire.Models.Tool
  url: '/tools'
