require_relative 'test_helper'

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
