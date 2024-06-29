# frozen_string_literal: false

def merge(array1, array2, num1, num2)
  i, j, k = 1
  array3 = []
  while i <= num1 && j <= num2
    if array1[i] < array2[j]
      array3[k += 1] = array1[i += 1]
    else
      array3[k += 1] = array2[j += 1]
    end
  end
end

def merge_sort(array)
  if array.class != Array
    puts 'The entered argument is not an array!'
  else
    left_side = array.index(array.first)
    right_side = array.index(array.last)
    if left_side < right_side
      centre = (left_side + right_side) / 2
      merge_sort(array.each_slice((array.size / centre).round).to_a)
      p array
      #merge(left_side, centre, right_side)
    end
  end
  array
end

merge_sort(1)
merge_sort([6, 1, 8, 3, 7, 4, 2, 5])
