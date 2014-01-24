# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(".favoritar").on  Gumby.click, "i.icon-star-empty", (e) ->
  e.stopImmediatePropagation();
  $this = $(this)
  addressValue = $this.parent().data("id")
  $.ajax
    url: "/usuario/favoritar/" + addressValue
    dataType: "json"
    success: (data) ->
      $this.removeClass("icon-star-empty").addClass "icon-star"
      console.debug data.status

$(".favoritar").on Gumby.click, "i.icon-star", (e) ->
  e.stopImmediatePropagation();
  $this = $(this)
  addressValue = $this.parent().data("id")
  $.ajax
    url: "/usuario/desfavoritar/" + addressValue
    dataType: "json"
    success: (data) ->
      $this.removeClass("icon-star").addClass "icon-star-empty"
      console.debug data.status


