# frozen_string_literal: false

def merge(left, right, sorted = [])
  left_index = 0
  right_index = 0
  sorted_index = 0

  while sorted_index < left.size + right.size
    if right[right_index].nil?
      sorted[sorted_index] = left[left_index]
      left_index += 1
    elsif left[left_index].nil?
      sorted[sorted_index] = right[right_index]
      right_index += 1
    elsif left[left_index] < right[right_index]
      sorted[sorted_index] = left[left_index]
      left_index += 1
    elsif left[left_index] > right[right_index]
      sorted[sorted_index] = right[right_index]
      right_index += 1
    end
    sorted_index += 1
  end
  sorted
end

p merge([7, 12, 42, 65], [3, 23, 31, 59])
p merge([6, 17, 39, 48, 69], [0, 12, 28, 55])

def merge_sort(array)
  centre = array.length / 2

  if array.is_a?(Array) == false || array.length < 2 # It returns one-element long arrays and also filters out the non-array arguments
    array
  else
    left = merge_sort(array[0...centre])
    right = merge_sort(array[centre...array.size])
    p merge(left, right)
  end
end

merge_sort(1)
merge_sort([6, 1, 8, 3, 7, 4, 2, 5])
