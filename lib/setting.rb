class Setting
  def self.websites
    [
      'http://ipy.bartucci.it',
      'https://significatocanzone.it',
      'http://placeof.it/it/welcome/intro'
    ]
  end
  
  def self.code_color code
    if code.to_i == 200
      return "00cc00"
    else
      return "ff0000"
    end
  end

end
