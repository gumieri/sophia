$:.unshift File.expand_path('..', __FILE__)
$:.unshift File.expand_path('../../lib', __FILE__)
require "rubygems"
require "test/unit"
require "rspec"

RSpec.configure do |config|
  config.before do
    ARGV.replace []
  end

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  def capture(stream)
    begin
      stream = stream.to_s
      eval "$#{stream} = StringIO.new"
      yield
      result = eval("$#{stream}").string
    ensure
      eval("$#{stream} = #{stream.upcase}")
    end

    result
  end
end  