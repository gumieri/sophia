require "spec_helper"
require "sophia/lexico"

describe Sophia::Lexico do

  it "say hello into terminal" do
    lexico = Sophia::Lexico.new

    message = capture(:stdout) { lexico.hi }
    expect(message.downcase).to include 'hello'
  end

end