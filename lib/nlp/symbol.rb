# allow arbitrary label for symbols which is used in 
# to_s routine
class Symbol
  def [](label)
    @label = label
    self
  end

  alias old_to_s to_s
  def to_s
    @label.nil? ? old_to_s : @label
  end 
end

