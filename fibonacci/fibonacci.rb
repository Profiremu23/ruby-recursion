def fibonacci(*array, number)
  if number < 2
    number
  else
    fibonacci(number - 2) + fibonacci(number - 1)
  end
end

p fibonacci(5)
p fibonacci(12)