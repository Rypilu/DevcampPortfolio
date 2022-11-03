# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = undefined
# $('.sortable') is getting .sortable from the class /views/portfolios/index.html.erb
# .sortable() function is from sortable library /assets/javascripts/html.sortable.js
ready = ->
  $('.sortable').sortable()
  return
#  $(document).ready is provided by jquery - when page loads pass in function which in this case is called ready and
#  has sortable in it
$(document).ready ready