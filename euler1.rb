class Euler1
  def to_s
    <<-END_PROBLEM.gsub(/\s+/, " ").strip
       If we list all the natural numbers below 10 that are multiples
       of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
    END_PROBLEM
  end

  def solve(start_below)
    start_at = start_below - 1
    sum = 0
    start_at.downto(1) { |n|  sum = sum + ((n % 5 == 0 || n %  3 == 0) ? n : 0)  }
    sum
  end
end
