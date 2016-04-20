require 'yaml'
require 'minitest/spec'

SETTINGS = YAML.load_file("env/support/settings.yml")

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