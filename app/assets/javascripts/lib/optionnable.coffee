class Backbone.Optionnable

  @options: ( options ) ->
    parent_options = @__super__.constructor._options

    if parent_options?
      @_options = $.extend true, {}, parent_options, options
    else
      @_options = options

  constructor: ( options ) ->
    @_bound = {}

    @options = $.extend( {}, @constructor._options, options )

    if @options.dependencies?
      for own name, dependency of @options.dependencies
        @[ name ] = dependency

