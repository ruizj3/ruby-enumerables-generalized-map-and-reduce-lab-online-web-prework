# Your Code Here
def map(string)
  new_array = []
  index = 0
  while index < string.length
    new_array.push(yield(string[index]))
    index += 1
  end
  new_array
end

def reduce(string, starting_point=nil)
  if starting_point
    sum = starting_point
    index = 0
  else
    sum = string[0]
    index = 1
  end
  while index < string.length
    sum = yield(sum, string[index])
    index += 1
  end
  sum
end
