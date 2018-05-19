require_relative 'test_helper'

class MonitorTest < Test::Unit::TestCase
  def test_monitor
    websites = []
    monitor = Monitor.new(websites: websites)
    result = monitor.get_status()
    p result
  end
end
