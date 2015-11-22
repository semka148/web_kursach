board_size =9

makeSourceMap = (size)->
  map=[]
  for row in [0..size*3-1]
    row=[]
    for col in [0..size*3-1]
      row.push 1
    map.push row
   map
   
    
renderSourceMap = (map) ->
  $map =$('#map').empty()
  for row in map
    for cell in row
      $map.append $('<div>').addClass("d-#{cell}")
 
$ ->
  renderSourceMap makeSourceMap(5)