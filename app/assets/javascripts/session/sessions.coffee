# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#new_session').validate({
    rules: {
      'session[email]': {
        required: true,
        email: true
      },
      'session[password]': {
        required: true,
        minlength: 6,
        maxlength: 20
      }
    },
    messages: {
      'session[email]': {
        required: "Please enter your email",
        email: "Please enter a valid email address"
      },
      'session[password]': {
        required: "Please enter your password",
        minlength: "Password must be at least 6 characters long",
        maxlength: "Password is too long"
      }
    },
    submitHandler: (form) ->
      form.submit()
  })
