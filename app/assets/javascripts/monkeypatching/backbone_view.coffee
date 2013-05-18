Backbone.View::delegateEvents = (events) ->
  #beginning of additional code
  if typeof(@selectors) == 'object'
    @sep = new Backbone.SingleEntryPoint(@$el, { selectors: @selectors } )
  delegateEventSplitter = /^(\S+)\s*(.*)$/;
  #end of additional code
  return this  unless events or (events = _.result(this, "events"))
  @undelegateEvents()
  for key of events
    method = events[key]
    method = this[events[key]]  unless _.isFunction(method)
    continue  unless method
    match = key.match(delegateEventSplitter)
    eventName = match[1]
    selector = match[2]
    method = _.bind(method, this)
    eventName += ".delegateEvents" + @cid
    if selector is ""
      @$el.on eventName, method
    else
      #beginning of additional code
      if selector.startsWith("@")
        @$el.on eventName, @sep._find_full_selector(selector.substr(1)), method
      #end of additional code
      else
        @$el.on eventName, selector, method
  this
