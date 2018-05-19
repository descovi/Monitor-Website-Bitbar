class Monitor

  def initialize websites:
    @websites = websites
  end

  def get_status
    @websites.map do |website|
      code = website[:code]
      url = website[:url]
      color = "color=##{Setting.code_color code}"
      # 401 sta per non autorizzato ma vuol dire che comunque è online
      if code == "200" || code == "401"
        return "OKk | color=##{Setting.code_color 200}"
      else
        #{}`afplay "/Users/#{Setting.user}/bitbar/sound/alarm.mp3"`
        return "#{code} - #{url} | #{Setting.code_color 500} | #{url} | href=#{url} | #{color}"
      end
    end
  end

end
