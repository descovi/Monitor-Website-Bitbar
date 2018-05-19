#!/usr/bin/env ruby

# -*- coding: utf-8 -*-

# <bitbar.title>Monitor HTTP</bitbar.title>
# <bitbar.author>simonini</bitbar.author>
# <bitbar.author.github>simonini</bitbar.author.github>
# <bitbar.desc>Monitoring in real time for websites.</bitbar.desc>
# <bitbar.dependencies>ruby</bitbar.dependencies>
# <bitbar.version>1.0</bitbar.version>
# <bitbar.image>https://raw.githubusercontent.com/simonini/Monitor-Website-Bitbar/master/monitor-website-image.png</bitbar.image>
# <bitbar.abouturl>https://github.com/simonini/Monitor-Website-Bitbar</bitbar>
# Monitor WEBSITE
#

require 'net/http'
require 'uri'
require_relative './lib/setting'
require_relative './lib/site'
require_relative './lib/monitor'

websites = []

Setting.websites.each do |url|
  site = Site.new(url: url)
  websites.push(site.call())
end

monitor = Monitor.new(websites: websites)
puts monitor.get_status()
