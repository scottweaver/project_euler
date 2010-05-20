require 'prime'

class Euler3
  def solve(value)
    start = Math.sqrt(value).to_i
    start.downto(2).each { |n| if value % n == 0 && Prime.instance.prime?(n) then return n end }
  end
end
