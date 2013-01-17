require "spec_helper"
require "sophia/lexico"

# redirect output to return
def puts(o) o end

describe Sophia::Lexico do

  it "say hello into terminal" do
    lexico = Sophia::Lexico.new
    lexico.hi.downcase.should include 'hello'
  end

end