# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
console.log "this post coffee is awesome!"

$ ->
  $('#my-button').on 'click', ->
    alert 'Button clicked!'

  $('.destroy-button').on 'click', ->
    alert 'Destrot clicked!'
