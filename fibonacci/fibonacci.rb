# frozen_string_literal: false

def fibonacci(number)
  array = []
  return [0] if number.zero?
  return [0, 1] if number == 1

  until number.zero?
    array << number - 1
    array.push(array[-2] + array.last) if array.length > 1
    array.delete_at(-2) if number > 1
    number -= 1
  end
  array
end

p fibonacci(1)
p fibonacci(2)
p fibonacci(3)
p fibonacci(5)
p fibonacci(12)

def fibonacci_rec(number)
  return [0] if number.zero?
  return [0, 1] if number == 1

  array = fibonacci_rec(number - 1)
  array.push(array[-2] + array.last)
  array
end

p fibonacci_rec(2)
p fibonacci_rec(5)
p fibonacci_rec(12)
