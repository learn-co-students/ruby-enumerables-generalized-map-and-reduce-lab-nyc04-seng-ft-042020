def map(array)
  new_array = Array.new 
  
  count = 0
  while count < array.count do
  new_array.push(yield(array[count]))
  count += 1
  end #while
  new_array
end #map

def reduce(array, *starting)
  if starting[0]
    value = starting[0]
    count = 0
  else
    value = array[0]
    count = 1
  end #if

  while count < array.count do
    value =  yield(value,array[count])
    count+=1
  end #while 
 value
end #reduce