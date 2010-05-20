require 'euler7'

describe Euler7, "#solve" do
  it "returns 13 as being the 6th prime number"do
    e7 = Euler7.new
    e7.solve(6).should == 13
  end
  
  #it "returns  as being the 1001st prime number"do
  #  e7 = Euler7.new
  #  e7.solve(1001)#.should == 13
  #end
end
