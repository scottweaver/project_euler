class Euler4
  def solve_bf(number_of_digits)
    ceiling =  "".ljust(number_of_digits, "9").to_i
    floor = "1".ljust(number_of_digits, "0").to_i
    largest_product = ceiling ** 2
    largest_product.downto(1).each { |n|
      if palindrome? n then ceiling.downto(floor).each { |divisor|
        q, r = n.divmod divisor
        if  r == 0 && q.to_s.length == number_of_digits then 
          p "Largest palindrome for the product of two, #{number_of_digits}-digit (#{divisor} * #{q}) numbers is #{n}."
          return n 
        end
      }
      end
    }
  end

  def solve(digits)
    x = "".ljust(digits, "9").to_i
    floor = digits > 1 ? "9".ljust(digits, "0").to_i : 1
    prev_max = max = 0;

    y = (floor..x).to_a.reverse
    x.downto(floor).each { |n1|
      y.each { |n2|
        product = n1 * n2
        max = [product, max].max if palindrome? product
        if max != prev_max then
         p "Max palindrome change at #{n1} * #{n2}.  Is now #{max}, was #{prev_max}"
         prev_max = max
        end
      }
      y.pop
    }
    return max
  end


  def palindrome?(arg)
    arg.to_s == arg.to_s.reverse
  end

end
