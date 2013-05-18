window.BackboneTest =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

  initialize: ->
    @_instantiate_view_from_data_attributes()

  _instantiate_view_from_data_attributes: ->
    $("*[data-bbview]").each (i, element) =>
      $element = $(element)
      view_name = @_find_view($element.attr("data-bbview"))
      new view_name({el: $element})

  _find_view: ( module_name ) ->
    module = BackboneTest.Views
    $.each module_name.split( '.' ), ( i, path ) ->
      module = module[ path ]
    module

$(document).ready ->
  BackboneTest.initialize()
