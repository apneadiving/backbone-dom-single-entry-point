unless typeof String::startsWith is "function"
  String::startsWith = (str) ->
    @slice(0, str.length) is str
