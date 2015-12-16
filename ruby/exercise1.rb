require 'wrong/assert'
include Wrong::Assert

#1.3
def sum_of_squares x, y
  (x ** 2) + (y ** 2)
end

def squares_max *args
 sum_of_squares args.max, args.sort[1]
end

assert { squares_max(3, 4, 5) == 41 }
assert { squares_max(1, 2, 3) == 13 }
assert { squares_max(1, 2, 10) != 24 }

#1.7
def average x, y
 (x + y) / 2.0
end

def better_guess x, y
  average y, (x / y)
end

def good_enough? x, y
 (x ** 2 - y ** 2) < 0.001
end

def square_iter x, y
 if good_enough? x, y
   y
  else
    square_iter x, better_guess(x, y)
 end
end

def sqrt x
  square_iter x, 1.0
end
puts sqrt 25
