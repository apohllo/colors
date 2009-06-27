# encoding: utf-8

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
end


