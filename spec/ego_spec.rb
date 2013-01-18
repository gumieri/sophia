require "spec_helper"
require "sophia/ego"

describe Sophia::Ego do

  it "define terminal as default location" do
    ego = Sophia::Ego.new
    ego.location.should eq :terminal
  end

end