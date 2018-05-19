require "test/unit"

require 'net/http'
require 'uri'
require_relative '../lib/setting'
require_relative '../lib/site'
require_relative '../lib/monitor'

class SettingTest < Test::Unit::TestCase

  def test_websites
    assert Setting.websites
  end

end


class SiteTest < Test::Unit::TestCase

  def test_correct_website
    url = 'http://example.com'
    site = Site.new(url: url)
    assert_equal({code: "200", url: url}, site.call)
  end

  def test_uncorrect_website
    url = 'http://example'
    site = Site.new(url: url)
    assert_equal({code: "Wrong url!", url: url}, site.call)
  end
end
