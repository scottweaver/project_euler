class MyPrime
  def prime?(n)
    n != 1 && (n == 2 || n == 3 || (n + 1) % 6 == 0 || (n - 1) % 6 == 0)
  end
end

me = MyPrime.new

(1..100).each { |n| p "Is #{n} a prime number? #{me.prime?(n)}" }
