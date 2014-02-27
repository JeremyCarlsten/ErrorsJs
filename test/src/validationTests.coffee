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


  test "Email input Test", =>
    equal(setupInput('email', 'John@email.com').isValidEmailInput(), true, "'John@email.com' is Valid!");
    equal(setupInput('email', '123Joe@email.com').isValidEmailInput(), true, "'123Joe@email.com' is Valid!");
    equal(setupInput('email', 'John doe@email.com').isValidEmailInput(), false, "'John doe@email.com' is Invalid!");
    equal(setupInput('email', 'John@').isValidEmailInput(), false, "'John@' is Invalid!");
    equal(setupInput('email', 'John.com').isValidEmailInput(), false, "'John.com' is Invalid!");
    equal(setupInput('email', '@.com').isValidEmailInput(), false, "'@.com' is Invalid!");
    equal(setupInput('email', '@doe.com').isValidEmailInput(), false, "'@doe.com' is Invalid!");