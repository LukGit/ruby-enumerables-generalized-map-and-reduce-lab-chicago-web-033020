# Your Code Here
def map (source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i])) 
    i += 1
  end
  return new
end

def reduce(source_array, starting_point=nil)
  i = 0
  num = 0
  if starting_point 
    num = starting_point
  else
    num = source_array[0]
    i = 1
  end
  while i < source_array.size do
    num =  yield(num, source_array[i])
    i += 1
  end
  num
end
