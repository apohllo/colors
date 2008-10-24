require 'iconv'

class String 
  HL = {
    :end => "[0m",
    :gray => "[30;1m",
    :red => "[31;1m",
    :green => "[32;1m",
    :yellow => "[33;1m",
    :blue => "[34;1m",
    :purple => "[35;1m",
    :lightblue => "[36;1m",
    :white => "[37;1m",
    :red_bg => "[30;101m",
    :green_bg => "[30;101m",
    :yellow_bg => "[30;101m",
    :blue_bg => "[30;101m",
    :purple_bg => "[30;101m",
    :lightblue_bg => "[30;101m",
    :white_bg => "[30;101m",
    :bold => "[1m",
  }


  # allow string highlithing with unix terminal codes
  def hl(type=:bold,word=nil)
    if word
      self.gsub(/(\s|\A|[[:punct:]])#{word}(\s|\Z|[[:punct:]])/,
        "\\1" + HL[type] + word.to_s + HL[:end] + "\\2")
    else
      HL[type] + self.to_s + HL[:end]
    end
  end
  
  # allow easy conversion from UTF-8 to iso
  def to_iso
    Iconv.conv('iso-8859-2','utf-8',self)
  end

  # allow easy conversion from iso to UTF-8
  def to_utf
    Iconv.iconv('utf-8','iso-8859-2',self)
  end
end


