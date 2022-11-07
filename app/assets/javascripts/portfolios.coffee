# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#--------------------------------------------------
# $('.sortable') is getting .sortable from the class /views/portfolios/index.html.erb
# .sortable() function is from sortable library /assets/javascripts/html.sortable.js
# --------------------------------------------------
#  $(document).ready is provided by jquery - when page loads pass in function which in this case is called ready and
#  has sortable in it
# --------------------------------------------------
ready = undefined
set_positions = undefined

set_positions = ->
  $('.card').each (i) ->
    $(this).attr 'data-pos', i + 1
    return
  return

ready = ->
  set_positions()
  $('.sortable').sortable()
  $('.sortable').sortable().bind 'sortupdate', (e, ui) ->
    updated_order = []
    set_positions()
    $('.card').each (i) ->
      updated_order.push
        id: $(this).data('id')
        position: i + 1
      return
    $.ajax
      type: 'PUT'
      url: '/portfolios/sort'
      data: order: updated_order
    return
  return

$(document).ready ready