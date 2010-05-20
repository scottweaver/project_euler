class Euler7
  def solve(count)
    if count == 1 then 2 elsif count == 2 then 3
    else
      i = 1
      prime = 0
      primes = 1
      bounds = count - 2
      while i <= bounds do
        prime = (6 * i - 1) if i <= bounds
        p "Prime #{primes+2} is #{prime}"
        primes = primes + 1
        primes = (6 * i + 1) if i <= bounds
        p "Prime #{primes+2} is #{prime}"
        primes = primes + 1
        i = i + 1
      end
      prime
    end
  end
end
