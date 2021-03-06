require 'euler4'

describe Euler4, "#solve" do
  it "returns 9 as largest product for two, single-digit numbers." do
    e4 = Euler4.new
    e4.solve(1).should == 9
  end

  it "returns 9009 as largest product for two, two-digit numbers." do
    e4 = Euler4.new
    e4.solve(2).should == 9009
  end

  it "returns 906609 as largest product for two, three-digit numbers." do
    e4 = Euler4.new
    p e4.solve(3).should == 906609
  end
  
  it "returns  as largest product for two, 4-digit numbers." do
    e4 = Euler4.new
    p e4.solve(4).should == 99000099 
  end
  
  #it "returns  as largest product for two, 5-digit numbers." do
  #  e4 = Euler4.new
  #  p e4.solve(5)#.should == 906609
  #end
end 
