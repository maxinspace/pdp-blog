$('#<%= dom_id(comment) %>').fadeOut ->
  $(@).remove()
