require_relative './bottle_number'
require_relative './no_bottle'
require_relative './one_bottle'
require_relative './six_pack'

class Bottles
  def song
    verses(99, 0)
  end

  def verses(bottle_start, bottle_end)
    bottle_start.downto(bottle_end).collect { |number_of_bottles| verse(number_of_bottles) }.join("\n")
  end

  def verse(number)
    actual_bottle = BottleNumber.for(number)
    remaining_bottle = actual_bottle.successor

    "#{actual_bottle.quantity.capitalize} #{actual_bottle.container} of beer on the wall, #{actual_bottle.quantity} #{actual_bottle.container} of beer.\n" +
    "#{actual_bottle.action}, #{remaining_bottle.quantity} #{remaining_bottle.container} of beer on the wall.\n"
  end
end
