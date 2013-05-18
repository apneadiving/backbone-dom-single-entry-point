window.BackboneTest =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new BackboneTest.Views.HomeIndex()

$(document).ready ->
  BackboneTest.initialize()
