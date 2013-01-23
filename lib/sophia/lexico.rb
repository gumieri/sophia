require 'rubygems'
require 'thor'

module Sophia
  class Lexico < Thor
    include Thor::Actions

    desc "hi", "say a hello"
    def hi
      message = "Hello my owner, I'm excited to organize all books, "
      message << "texts, images or any other type of file that you have!"
      shell.say message
    end
  end
end