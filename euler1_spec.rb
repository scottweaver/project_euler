require 'euler1'

describe Euler1, "#solve" do
  it "returns 23 for all natural numbers less than 10 that are divisble by 3 and 5." do
    e1 = Euler1.new
    e1.solve(10).should == 23
  end

  it "returns 233168 for all natural numbers less than 1000 that are divisble by 3 and 5" do
    e1 = Euler1.new
    e1.solve(1000).should == 233168
  end
end
