class BottleNumber
  attr_reader :number

  def self.for(number)
    klass = case number
      when 0 then NoBottle
      when 1 then OneBottle
      else
        BottleNumber
    end

    klass.new(number)
  end

  def initialize(number)
    @number = number
  end

  def action
    "Take one down and pass it around"
  end

  def quantity
    number.to_s
  end

  def container
    "bottles"
  end

  def successor
    BottleNumber.for(number - 1)
  end
end
