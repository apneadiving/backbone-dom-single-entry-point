class BackboneTest.Views.HomeIndex extends Backbone.View

  # template: JST['home_indices/index']

  selectors:
    first:
      sel:  '.first'
      meta: 'span'
    second: '.second'
    third:  '.third'

  initialize: ->
    @setElement $('#list')
    window.foo = @

  events:
    "click @first":      "first"
    "click @second":     "second"
    "click @third":      "third"
    "click @first_meta": "meta"

  first: ->
    console.log 1

  second: ->
    console.log 2

  third: ->
    console.log 3

  meta: ->
    console.log 'meta'
