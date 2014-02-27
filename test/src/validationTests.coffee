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
    equal(setupInput('email', '').isValidEmailInput(), false, "'' is Invalid!");
    equal(setupInput('email', 'John doe@email.com').isValidEmailInput(), false, "'John doe@email.com' is Invalid!");
    equal(setupInput('email', 'John@').isValidEmailInput(), false, "'John@' is Invalid!");
    equal(setupInput('email', 'John.com').isValidEmailInput(), false, "'John.com' is Invalid!");
    equal(setupInput('email', '@.com').isValidEmailInput(), false, "'@.com' is Invalid!");
    equal(setupInput('email', '@doe.com').isValidEmailInput(), false, "'@doe.com' is Invalid!");

  test "Phone input Test", =>
    equal(setupInput('text', '11234567891').isValidPhoneInput(), true, "'11234567891' is Valid!");
    equal(setupInput('text', '1234567891').isValidPhoneInput(), true, "'1234567891' is Valid!");
    equal(setupInput('text', '1 (123)456-7891').isValidPhoneInput(), true, "'1 (123)456-7891' is Valid!");
    equal(setupInput('text', '1(123)456-7891').isValidPhoneInput(), true, "'1(123)456-7891' is Valid!");
    equal(setupInput('text', '(123)456-7891').isValidPhoneInput(), true, "'(123)456-7891' is Valid!");
    equal(setupInput('text', '1 123 456-7891').isValidPhoneInput(), true, "'1 123 456-7891' is Valid!");
    equal(setupInput('text', '123 456-7891').isValidPhoneInput(), true, "'123 456-7891' is Valid!");
    equal(setupInput('text', '1 123 456-7891').isValidPhoneInput(), true, "'1 123 456-7891' is Valid!");
    equal(setupInput('text', '123 456 7891').isValidPhoneInput(), true, "'123 456 7891' is Valid!");
    equal(setupInput('text', '123abc7891').isValidPhoneInput(), false, "'123abc7891' is Invalid!");
    equal(setupInput('text', '123 abc 7891').isValidPhoneInput(), false, "'123 abc 7891' is Invalid!");
    equal(setupInput('text', '!@#1237891').isValidPhoneInput(), false, "'!@#1237891' is Invalid!");
    equal(setupInput('text', '123').isValidPhoneInput(), false, "'123' is Invalid!");
    equal(setupInput('text', '123456789123456789').isValidPhoneInput(), false, "'123456789123456789' is Invalid!");
    equal(setupInput('text', '12345678').isValidPhoneInput(), false, "'12345678' is Invalid!");
    equal(setupInput('text', '').isValidPhoneInput(), false, "'' is Invalid!");