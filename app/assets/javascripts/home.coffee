$ ->
  # Focus on click
  $("#reps").on "click", ->
    $(this).select()
  $("#weight").on "click", ->
    $(this).select()
  # Change results on change
  $("#reps").on "keyup", ->
    CalculateScore()
  $("#weight").on "keyup", ->
    CalculateScore()
  # The score
  CalculateScore = ->
    score = $("#weight").val()*($("#reps").val()-3.4)+$("#reps").val()*30 + 0.01*$("#weight").val()*$("#weight").val()
    score = Math.round(score)
    $("#results").text(score)
