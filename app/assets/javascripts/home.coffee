$ ->
  # Focus on click
  $(":input").on "click", ->
    $(this).select()
  # Change results on change
  $(":input").bind "keyup change", (e) ->
    CalculateScore()
  CalculateScore = ->
    # Score = Weight * (Reps - 3.8) + Reps * 30 + 0.01 * Weight * Weight
    score = $("#weight").val() * ( $("#reps").val() - 3.8 ) + ( $("#reps").val() * 30 ) + (0.01 * $("#weight").val() * $("#weight").val())
    score = Math.round(score)
    $("#results").text(score)
