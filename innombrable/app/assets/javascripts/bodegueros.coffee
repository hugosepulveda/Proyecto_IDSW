# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('.check').on 'click', ->
  checked = jQuery('input:checkbox:checked').map(->
    @value
  ).get()
  jQuery('input:checkbox:checked').parents('tr').remove()
  return
