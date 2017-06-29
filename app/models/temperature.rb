class Temperature
  include Comparable
  attr_reader :degrees
  COLD = 20
  HOT = 25

  def initialize(degrees)
    @degrees = degrees
  end

  def cold?
    self.degrees < COLD
  end

  def hot?
    self.degrees > HOT
  end

  def <=>(other)
    degrees <=> other.degrees
  end

  def hash
    degrees.hash
  end

 alias eql? ==

  def to_s
    "#{degrees} °C"
  end
end
