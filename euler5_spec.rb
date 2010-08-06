require 'euler5'

describe Euler5, "#solve" do
  it "returns 2520 as the Least Common Multiplier (LCM) for the all numbers between 1 and 10." do
    e5 = Euler5.new
    e5.solve((1..10)).should == 2520
  end

  it "returns 232792560 as the Least Common Multiplier (LCM) for the all numbers between 1 and 20." do
    e5 = Euler5.new
    e5.solve((1..20)).should == 232792560
  end
end
