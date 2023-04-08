def bubblesort (array)
  iterations = (array.length-1)
  pop = 0
  for a in 0..iterations do
    for b in 1..iterations do
      if array[b-1]>array[b]
        pop = array.delete_at(b-1)
        array.insert(b,pop)
      end
    end
  end
  p array
  return array
end



bubblesort([4,3,78,2,0,2,5,7,12])