class Euler6
  def to_s
    <<-PROBLEM
The sum of the squares of the first ten natural numbers is,

12 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
    PROBLEM
  end

  def solve(ceiling)
    sum_of_the_squares = 0
    sum = 0
    1.upto(ceiling) {|n|
      sum_of_the_squares = sum_of_the_squares + n**2
      sum = sum + n
    }
    (sum ** 2 - sum_of_the_squares).abs
  end
end
