$(document).ready ->

  setupInput = (type, value) ->
    $("<input type='#{type}' value='#{value}' />")

  test "Name Input Test", =>
    equal(setupInput('text', 'John Doe').isValidAlphaNumericInput(), true, "'John Doe' is Valid!");
    equal(setupInput('text', 'UPPERMAN').isValidAlphaNumericInput(), true, "'UPPERMAN' is Valid!");
    equal(setupInput('text', 'lowerman').isValidAlphaNumericInput(), true, "'lowerman' is Valid!");
    equal(setupInput('text', '').isValidAlphaNumericInput(), false, "'' is not a valid name.");
    equal(setupInput('text', 'Ke$ha').isValidAlphaNumericInput(), false, "'Ke$ha' is not a valid name.");
    equal(setupInput('text', '!@#$%^&*()').isValidAlphaNumericInput(), false, "'!@#$%^&*()' is not a valid name.");
    equal(setupInput('text', '<a href="http://www.google.com>BadLink</a>"').isValidAlphaNumericInput(), false, "html is not a valid name.");
