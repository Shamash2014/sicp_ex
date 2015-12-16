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
