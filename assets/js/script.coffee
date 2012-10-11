#= require bootstrap
#= require_tree models
#= require_tree collections
#= require_tree views

# Use loading indicator for jQuery AJAX requests
$("#loading").on("ajaxSend", ->
  $(this).show()
).on("ajaxComplete", ->
  $(this).hide()
)
