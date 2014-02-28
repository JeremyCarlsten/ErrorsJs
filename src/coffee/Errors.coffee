$ = jQuery

$.fn.isValidAlphaNumericInput = ->
  allowedPattern = /^[a-zA-z0-9\s]+$/i
  value = $(this).val().trim()

  allowedPattern.test(value)

$.fn.isValidNumber = ->
  allowedPattern = /^[0-9]+$/i
  value = $(this).val().trim()

  allowedPattern.test(value)


$.fn.isValidEmailInput = ->
  allowedPattern = /^[\w\-\_\.\d]+@\w+.\w{3}$/
  value = $(this).val().trim()

  allowedPattern.test(value)

$.fn.isValidPhoneInput = ->
  allowedPattern = /^[\d\s\.\-\(\)]+$/
  isAllDigits = /[\d]+/
  isDelemited = /^[\d\s\.\-]+/
  value = $(this).val().trim()

  if allowedPattern.test(value)
    value = value.replace(/[\s\.\-\(\)]+/g, "");
    if isAllDigits.test(value) and value.length in [7,10,11]
      return true

  false


