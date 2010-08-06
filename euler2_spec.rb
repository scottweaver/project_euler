require 'euler2'

describe Euler2, "#solve" do
  it "returns 4,613,732 for the sum of the of all the even numbers in the Fibonacci sequence startring at 1,2 and not exceeding 4,000,000." do
    e2 = Euler2.new
    e2.solve(4000000).should == 4613732
  end
end
