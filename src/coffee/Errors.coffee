$ = jQuery

$.fn.isValidAlphaNumericInput = ->
  allowedPattern = /^[a-zA-z0-9\s]+$/i
  value = $(this).val().trim()

  allowedPattern.test(value)


