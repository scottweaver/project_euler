class Euler5
  require 'prime'

  def to_s
    <<-PROBLEM
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?
    PROBLEM
  end

  # Algorithim inspiried by http://www.ehow.com/how_4592577_way-see-of-its-applications.html
  def solve(dividends)
    product = 1
    dividends = dividends.to_a.uniq
    Prime.instance.each { |prime|
      if dividends.select {|x| x > 1}.empty? then
        return product
      else
        until dividends.select {|x| x % prime == 0 }.empty?
          product = product * prime
          dividends.select {|x| x % prime == 0 }.each{ |n|   dividends[dividends.find_index(n)] = n / prime }
        end
      end
    }
  end
end
