require "spec_helper"
require "sophia/angelos"

describe Sophia::Angelos do

  it "redirect to terminal" do
    angelos = Sophia::Angelos.new

    angelos.send "HI THERE"
  end

end
