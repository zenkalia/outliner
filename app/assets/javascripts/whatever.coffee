$ ->
  $('#new_point').on 'ajax:success', (xhr, data) ->
    $('ol').append $('<li>').html(data)
  $('.container').on 'keyup', 'input', ->
    $(@).closest('form').first().submit()
