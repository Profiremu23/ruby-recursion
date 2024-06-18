# frozen_string_literal: false

def fibonacci(number, array = [])
  return [0] if number.zero?
  return [0, 1] if number == 1

  array
end

p fibonacci(1)
p fibonacci(2)
p fibonacci(3)
p fibonacci(5)
#p fibonacci(12)

def fibonacci_rec(number, array = [])
  return [0] if number.zero?
  return [0, 1] if number == 1

  array = fibonacci(number - 1)
  array.push(array[-2] + array.last)
  array
end

#p fibonacci_rec(5)
#p fibonacci_rec(12)
