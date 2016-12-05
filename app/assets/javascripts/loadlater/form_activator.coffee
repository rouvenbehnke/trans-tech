scrivito.on 'load', ->
  $('#offer-trigger').on 'click', (e) ->
    $('#inquiry-button').tab('show')

  $('#offer-trigger-pricing').on 'click', (e) ->
    $('#inquiry-button').tab('show')

  $('#work-with-us-trigger').on 'click', (e) ->
    $('#work-for-us-button').tab('show')
