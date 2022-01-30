class SongVerse
  def self.for(number)
    new(BottleNumber.for(number))
  end

  def self.lyrics(number)
    self.for(number).lyrics
  end

  attr_reader :bottle_number, :remaining_bottle

  def initialize(bottle_number)
    @bottle_number = bottle_number
    @remaining_bottle = bottle_number.successor
  end

  def lyrics
    "#{bottle_number.quantity.capitalize} #{bottle_number.container} of beer on the wall, #{bottle_number.quantity} #{bottle_number.container} of beer.\n" +
    "#{bottle_number.action}, #{remaining_bottle.quantity} #{remaining_bottle.container} of beer on the wall.\n"
  end
end
