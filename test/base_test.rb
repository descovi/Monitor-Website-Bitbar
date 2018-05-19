require "test/unit"

require 'net/http'
require 'uri'
require_relative '../lib/setting'
require_relative '../lib/site'
require_relative '../lib/monitor'

class TestSimpleNumber < Test::Unit::TestCase

  def test_simple
    assert Setting.websites
  end

end
