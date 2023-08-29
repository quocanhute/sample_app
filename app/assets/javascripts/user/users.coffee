# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#new_user').validate({
    rules: {
      'user[name]': {
        required: true
      },
      'user[email]': {
        required: true,
        email: true
      },
      'user[password]': {
        required: true,
        minlength: 6,
        maxlength: 20
      },
      'user[password_confirmation]': {
        required: true,
        minlength: 6,
        maxlength: 20,
        equalTo: '#user_password'
      }
    },
    messages: {
      'user[name]': {
        required: "Name can't be blank"
      },
      'user[email]': {
        required: "Email can't be blank",
        email: "Invalid email format"
      },
      'user[password]': {
        required: "Password can't be blank",
        minlength: "Password must be at least 6 characters long",
        maxlength: "Password is too long"
      },
      'user[password_confirmation]': {
        required: "Confirmation can't be blank",
        minlength: "Confirmation must be at least 6 characters long",
        maxlength: "Confirmation is too long",
        equalTo: "Password and confirmation must match"
      }
    }
  })
