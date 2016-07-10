# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('#new_painting').fileupload
    dataType: 'script',
    add: (e, data) ->
      $('#progress .bar').css('width', 0)
      data.submit()
    progressall: (e, data) ->
      progress = parseInt(data.loaded / data.total * 100, 10)
      $('#progress .bar').css('width', progress + '%')
