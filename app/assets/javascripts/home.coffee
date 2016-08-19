$ ->
  # Focus on click
  $(":input").on "click", ->
    $(this).select()
  # Change results on change
  $(":input").bind "keyup change", (e) ->
    CalculateScore()
  CalculateScore = ->
    score = $("#weight").val()*($("#reps").val()-3.4)+$("#reps").val()*30 + 0.01*$("#weight").val()*$("#weight").val()
    score = Math.round(score)
    $("#results").text(score)
