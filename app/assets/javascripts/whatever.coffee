$ ->
  $('#new_point').on 'ajax:success', (xhr, data) ->
    lol = $('<li>').html(data)
    $('ol').append lol
  $('.container').on 'keyup', 'input', ->
    $(@).closest('form').first().submit()
