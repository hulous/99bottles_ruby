class SongVerse
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def lyrics
    actual_bottle = BottleNumber.for(number)
    remaining_bottle = actual_bottle.successor

    "#{actual_bottle.quantity.capitalize} #{actual_bottle.container} of beer on the wall, #{actual_bottle.quantity} #{actual_bottle.container} of beer.\n" +
    "#{actual_bottle.action}, #{remaining_bottle.quantity} #{remaining_bottle.container} of beer on the wall.\n"
  end
end
