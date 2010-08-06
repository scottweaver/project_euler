class Euler7
  def solve(count)
    if count == 1 then 2 elsif count == 2 then 3
    else
      prime = 0
      while i <= bounds do
        prime = (6 * i - 1) if i <= bounds
        prime = (6 * i + 1) if i <= bounds
        i = i + 1
      end
      prime
    end
  end
end
