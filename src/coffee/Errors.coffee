$ = jQuery

$.fn.isValidAlphaNumericInput = ->
  allowedPattern = /^[a-zA-z0-9\s]+$/i
  value = $(this).val().trim()

  allowedPattern.test(value)


$.fn.isValidEmailInput = ->
  allowedPattern = /^[\w\-\_\.\d]+@\w+.\w{3}$/
  value = $(this).val().trim()

  allowedPattern.test(value)

