(function() {
  var $, matchesPattern;

  $ = jQuery;

  matchesPattern = function(value, allowedPattern) {
    return allowedPattern.test(value);
  };

  $.fn.isValidAlphaNumericInput = function() {
    return matchesPattern($(this).val().trim(), /^[a-zA-z0-9\s]+$/i);
  };

  $.fn.isValidNumber = function() {
    return matchesPattern($(this).val().trim(), /^[0-9]+$/i);
  };

  $.fn.isValidEmailInput = function() {
    return matchesPattern($(this).val().trim(), /^[\w\-\_\.\d]+@\w+.\w{3}$/);
  };

  $.fn.isValidPhoneInput = function() {
    var allowedPattern, isAllDigits, isDelemited, value, _ref;
    allowedPattern = /^[\d\s\.\-\(\)]+$/;
    isAllDigits = /[\d]+/;
    isDelemited = /^[\d\s\.\-]+/;
    value = $(this).val().trim();
    if (matchesPattern(value, allowedPattern)) {
      value = value.replace(/[\s\.\-\(\)]+/g, "");
      if (isAllDigits.test(value) && ((_ref = value.length) === 7 || _ref === 10 || _ref === 11)) {
        return true;
      }
    }
    return false;
  };

}).call(this);
