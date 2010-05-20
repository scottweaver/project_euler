require 'euler6'

describe Euler6, "#solve" do
  it "returns 2640 as the difference of the square of the sum and the sum of the squares for the first 10 natural numbers." do
    e6 = Euler6.new
    e6.solve(10).should == 2640
  end

  it "returns 25164150 as the difference of the square of the sum and the sum of the squares for the first 100 natural numbers." do
    e6 = Euler6.new
    e6.solve(100).should == 25164150
  end
end
