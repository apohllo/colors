# encoding: utf-8

class String 
  HIGHLIGHT = {
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
    :default => "[1m"
  }


  # Allow string highlighting with Unix terminal codes.
  # The +type+ of highlighting might be :bold, a color, e.g. :red, :blue
  # or a background color, e.g. :red_bg, blue_bg, etc.
  #
  # If the +word+ is given, only the word will be highlighted. 
  # It is directly expanded in the Regexp, so you may use meta-characters,
  # e.g. (John|Frank|Bill). It is also surrounded by anchors, so only
  # whole words will be highlighted, e.g. "abc abcd".hl(:bold,"abc") 
  # => *abc* abcd
  def hl(type=:bold,word=nil)
    if word
      self.gsub(/(\s|\A|[[:punct:]])#{word}(\s|\Z|[[:punct:]])/,
        "\\1" + HIGHLIGHT[type] + word.to_s + HIGHLIGHT[:end] + "\\2")
    else
      HIGHLIGHT[type] + self.to_s + HIGHLIGHT[:end]
    end
  end
end


