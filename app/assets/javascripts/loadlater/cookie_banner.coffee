$ ->
  $('#acceptedCookies').on 'click', (event) ->
    event.preventDefault()

    element = $(event.currentTarget)
    destination = element.data('destination')
    id = {id: element.data('id')}

    $.get(destination, id).success ->
      element.closest('.cookie-notice').hide()
