def stock_picker (array)
  lowest = 0
  highest = 0
  sorted = array.sort {|a,b| a<b ? 1:-1}
  lowest = sorted[-1]
  highest = sorted[0]
  i = 1
  while array.index(lowest)>array.index(highest) do
    lowest = sorted[-1-i]
    highest = sorted[0+i]
    i+=1
  end
  answer = [array.index(lowest),array.index(highest)]
  p answer
  return answer
end



stock_picker([17,3,6,9,15,8,6,1,10])