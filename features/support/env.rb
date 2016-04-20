require 'yaml'
require 'minitest/spec'
require 'minitest/assertions'
require File.join(File.dirname(__FILE__),'..','..','lib_require.rb')

SETTINGS = YAML.load_file("env/settings.yml")

class MinitestWorld
  include Minitest::Assertions
  attr_accessor :assertions

  def initialize
    self.assertions = 0
  end
end

World do
  MinitestWorld.new
end