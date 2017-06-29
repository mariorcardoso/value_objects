class Size
  SIZES = %w(small medium big)
  attr_reader :size

  def initialize(size)
    @size = size
  end

  def ==(other)
    self.size == other.size
  end

  def self.to_select
    SIZES.map{|c| [c.capitalize, c]}
  end

  def valid?
    SIZES.include?(size)
  end

  def to_s
    size.capitalize
  end
end

# class Size < Value.new(:size)
#   SIZES = %w(small medium big)
#
#   def ==(other)
#     self.size == other.size
#   end
#
#   def self.to_select
#     SIZES.map{|c| [c.capitalize, c]}
#   end
#
#   def valid?
#     SIZES.include?(size)
#   end
#
#   def to_s
#     size.capitalize
#   end
# end
