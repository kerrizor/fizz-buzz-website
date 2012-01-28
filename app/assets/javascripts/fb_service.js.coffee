# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


fizzbuzz = (data) -> 
  $("#randomFizzBuzz").fadeOut(
    "slow", 
    () -> 
      $("#randomFizzBuzz").text(data.id + " is " + data.result)
      $("#randomFizzBuzz").fadeIn()
  )

getobj = (n) -> 
  $.ajax {
    url: "/fizzbuzz/" + n + ".json",
    success: fizzbuzz
  }

randomfizzbuzz = () -> 
  getobj(Math.floor 1+Math.random()*100);
  setTimeout randomfizzbuzz, 5000;

$ -> 
  setTimeout randomfizzbuzz, 5000;
