$(document).ready ->
  setupInput = (type, value) ->
    $("<input type='#{type}' value='#{value}' />")

  test "AlphaNumeric Input Test", =>
    equal(setupInput('text', 'John Doe').isValidAlphaNumericText(), true, "'John Doe' is Valid!");
    equal(setupInput('text', 'UPPERMAN').isValidAlphaNumericText(), true, "'UPPERMAN' is Valid!");
    equal(setupInput('text', 'lowerman').isValidAlphaNumericText(), true, "'lowerman' is Valid!");
    equal(setupInput('text', '').isValidAlphaNumericText(), false, "'' is not valid text.");
    equal(setupInput('text', 'Ke$ha').isValidAlphaNumericText(), false, "'Ke$ha' is not valid text.");
    equal(setupInput('text', '!@#$%^&*()').isValidAlphaNumericText(), false, "'!@#$%^&*()' is not valid text.");
    equal(setupInput('text', '<a href="http://www.google.com>BadLink</a>"').isValidAlphaNumericText(), false, "html is not valid text.");

  test "Numeric Input Test", =>
    equal(setupInput('text', '123456').isValidNumber(), true, "'123456' is Valid!");
    equal(setupInput('text', 'Ke$ha').isValidNumber(), false, "'Ke$ha' is not a valid number.");
    equal(setupInput('text', 'abcd').isValidNumber(), false, "'abcd' is not a valid number.");
    equal(setupInput('text', 'ABCD').isValidNumber(), false, "'ABCD' is not a valid number.");
    equal(setupInput('text', '!@#$%^&*()').isValidNumber(), false, "'!@#$%^&*()' is not a valid number.");
    equal(setupInput('text', '<a href="http://www.google.com>BadLink</a>"').isValidNumber(), false, "html is not a valid number.");

  test "Email input Test", =>
    equal(setupInput('email', 'John@email.com').isValidEmail(), true, "'John@email.com' is Valid!");
    equal(setupInput('email', '123Joe@email.com').isValidEmail(), true, "'123Joe@email.com' is Valid!");
    equal(setupInput('email', '').isValidEmail(), false, "'' is Invalid!");
    equal(setupInput('email', 'John doe@email.com').isValidEmail(), false, "'John doe@email.com' is Invalid!");
    equal(setupInput('email', 'John@').isValidEmail(), false, "'John@' is Invalid!");
    equal(setupInput('email', 'John.com').isValidEmail(), false, "'John.com' is Invalid!");
    equal(setupInput('email', '@.com').isValidEmail(), false, "'@.com' is Invalid!");
    equal(setupInput('email', '@doe.com').isValidEmail(), false, "'@doe.com' is Invalid!");

  test "Phone input Test", =>
    equal(setupInput('text', '11234567891').isValidPhoneNumber(), true, "'11234567891' is Valid!");
    equal(setupInput('text', '1234567891').isValidPhoneNumber(), true, "'1234567891' is Valid!");
    equal(setupInput('text', '1 (123)456-7891').isValidPhoneNumber(), true, "'1 (123)456-7891' is Valid!");
    equal(setupInput('text', '1(123)456-7891').isValidPhoneNumber(), true, "'1(123)456-7891' is Valid!");
    equal(setupInput('text', '(123)456-7891').isValidPhoneNumber(), true, "'(123)456-7891' is Valid!");
    equal(setupInput('text', '1 123 456-7891').isValidPhoneNumber(), true, "'1 123 456-7891' is Valid!");
    equal(setupInput('text', '123 456-7891').isValidPhoneNumber(), true, "'123 456-7891' is Valid!");
    equal(setupInput('text', '1 123 456-7891').isValidPhoneNumber(), true, "'1 123 456-7891' is Valid!");
    equal(setupInput('text', '123 456 7891').isValidPhoneNumber(), true, "'123 456 7891' is Valid!");
    equal(setupInput('text', '123abc7891').isValidPhoneNumber(), false, "'123abc7891' is Invalid!");
    equal(setupInput('text', '123 abc 7891').isValidPhoneNumber(), false, "'123 abc 7891' is Invalid!");
    equal(setupInput('text', '!@#1237891').isValidPhoneNumber(), false, "'!@#1237891' is Invalid!");
    equal(setupInput('text', '123').isValidPhoneNumber(), false, "'123' is Invalid!");
    equal(setupInput('text', '123456789123456789').isValidPhoneNumber(), false, "'123456789123456789' is Invalid!");
    equal(setupInput('text', '12345678').isValidPhoneNumber(), false, "'12345678' is Invalid!");
    equal(setupInput('text', '').isValidPhoneNumber(), false, "'' is Invalid!");