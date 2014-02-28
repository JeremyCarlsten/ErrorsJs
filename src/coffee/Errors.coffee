$ = jQuery

matchesPattern = (value, allowedPattern) ->
  allowedPattern.test(value)

$.fn.isValidAlphaNumericInput = ->
  matchesPattern($(this).val().trim(), /^[a-zA-z0-9\s]+$/i)

$.fn.isValidNumber = ->
  matchesPattern($(this).val().trim(), /^[0-9]+$/i)

$.fn.isValidEmailInput = ->
  matchesPattern($(this).val().trim(), /^[\w\-\_\.\d]+@\w+.\w{3}$/)

$.fn.isValidPhoneInput = ->
  allowedPattern = /^[\d\s\.\-\(\)]+$/
  isAllDigits = /[\d]+/
  isDelemited = /^[\d\s\.\-]+/
  value = $(this).val().trim()

  if matchesPattern(value, allowedPattern)
    value = value.replace(/[\s\.\-\(\)]+/g, "");
    if isAllDigits.test(value) and value.length in [7,10,11]
      return true

  false


