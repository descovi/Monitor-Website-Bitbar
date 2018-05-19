require_relative 'test_helper'

class SettingTest < Test::Unit::TestCase

  def test_websites
    assert Setting.websites
  end

end
