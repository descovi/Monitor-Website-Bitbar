require_relative 'test_helper'

class MonitorTest < Test::Unit::TestCase
  def test_monitor
    websites = [
      {url: 'http://example.com', code: '200'},
      {url: 'http://gazzetta.com', code: '500'}
    ]
    monitor = Monitor.new(websites: websites)
    result = monitor.get_status()
    [
      "OK | color=#00cc00",
      "500 - http://gazzetta.com | ff0000 | http://gazzetta.com | href=http://gazzetta.com | color=#ff0000"
    ]
  end
end
