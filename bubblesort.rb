def bubblesort(array)
  iterations = (array.length - 1)
  for a in 0..iterations do
    for b in 1..iterations do
      if array[b - 1] > array[b]
        pop = array.delete_at(b - 1)
        array.insert(b, pop)
      end
    end
  end
  p array
  array
end

bubblesort([1, 2, 3, 2, 5, 2, 5, 7, 12])
