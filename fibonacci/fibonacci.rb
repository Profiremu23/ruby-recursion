def fibonacci(number, array = [])
  number.times do
    if number < 2
      array << number
    else
      array << number - 2 + number - 1
    end
    number -= 1
  end
  array
end

p fibonacci(5)
p fibonacci(12)

def fibonacci_rec(number, array = [])
end

p fibonacci_rec(5)
p fibonacci_rec(12)
