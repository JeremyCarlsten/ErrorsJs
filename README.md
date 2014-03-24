ErrorsJs
========

A Client Side jquery plugin for catching errors. Feel free to post an issue or pull request for more features.

[![Build Status](https://travis-ci.org/JeremyCarlsten/ErrorsJs.png?branch=master)](https://travis-ci.org/JeremyCarlsten/ErrorsJs)

How to Use 
----------

Step 1: Download the [minified js] (https://github.com/JeremyCarlsten/ErrorsJs/blob/master/distribution/errors-1.1.min.js) (Right click and save as)

Step 2: Ensure you have [jquery](http://jquery.com/) included on your page

Step 3: Use and enjoy see the examples below



Examples
--------

Example 1:

```html
 <form method='POST'>
    <label for="full-name">Full Name: </label>
    <input type="text" name="full-name" id="full-name" placeholder="John Doe" />
 </form>
 
 ...
 
 <script type="text/javascript">
    $(document).ready(function(){
    
      $("full-name").on('change', function(event){
        if($("full-name").isValidAlphaNumericText()){
          alert("It's All Good");
        else{
          event.preventDefault();
          // Do some error handling.
        }
      });
    });
 </script>
```

Example 2 (They are all pretty much the same, change the method):

```html
 <form method='POST'>
    <label for="email">Full Name: </label>
    <input type="email" name="email" id="email" placeholder="John_Doe@email.com" />
 </form>
 
 ...
 
 <script type="text/javascript">
    $(document).ready(function(){
    
      $("email").on('change', function(event){
        if($("full-name").isValidEmail()){
          alert("It's All Good");
        else{
          event.preventDefault();
          // Do some error handling.
        }
      });
    });
 </script>
```


Methods
-------

######isValidAlphaNumericText()

  Returns: Boolean
```javascript
  var valid = "My String".isValidAlphaNumericText();
```

######isValidNumber()

  Returns: Boolean
```javascript
  var valid = "123456798".isValidNumber();
```

######isValidEmail()

  Returns: Boolean
```javascript
  var valid = "johnDoe@email.com".isValidEmail();
```

######isValidPhoneNumber()

  Returns: Boolean
```javascript
  var valid = "(123) 456-7890".isValidPhoneNumber();
```


######isValidDate()

  Returns: Boolean
```javascript
  var valid = "01/01/2000".isValidDate();
```
