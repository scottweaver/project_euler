require 'euler3'

describe Euler3, "#solve" do
  it "returns 29 as the largest prime factor for 13195" do
    e3 = Euler3.new
    e3.solve(13195).should == 29
  end

  it "returns 6857 as the largest prime factor for 600851475143" do
    e3 = Euler3.new
    e3.solve(600851475143).should == 6857
  end
end
