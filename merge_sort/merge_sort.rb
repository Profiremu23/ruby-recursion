# frozen_string_literal: false

def merge(array1, array2, num1 = array1.size, num2 = array2.size)
  array3 = []
  i = 0
  j = 0
  k = 0

  while k < num1 + num2
    if array2[j].nil? || array1[i] < array2[j]
      array3[k] = array1[i]
      i += 1
    elsif array1[i].nil? || array1[i] > array2[j]
      array3[k] = array2[j]
      j += 1
    end
    k += 1
  end
  array3
end

p merge([7, 12, 42, 65], [3, 23, 31, 59])
p merge([6, 17, 39, 48, 69], [0, 12, 28, 55])

def merge_sort(array)
  unless array.is_a?(Array)
    puts 'The entered argument is not an array!'
    return
  end
  centre = array.length / 2
  p left = merge_sort(array[0...centre]) unless array.size == 1
  p right = merge_sort(array[centre...array.size]) unless array.size == 1
  # p merge(left, right)
end

merge_sort(1)
merge_sort([6, 1, 8, 3, 7, 4, 2, 5])
