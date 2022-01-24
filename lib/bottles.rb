require_relative './bottle_number'

class Bottles
  def song
    verses(99, 0)
  end

  def verses(bottle_start, bottle_end)
    bottle_start.downto(bottle_end).collect { |number_of_bottles|
      verse(number_of_bottles)
    }.join("\n")
  end

  def verse(number)
    actual_bottle = bottle_number(number)
    remaining_bottle = bottle_number(number - 1)

    "#{actual_bottle.quantity.capitalize} #{actual_bottle.container} of beer on the wall, #{actual_bottle.quantity} #{actual_bottle.container} of beer.\n" +
    "#{actual_bottle.action}, #{remaining_bottle.quantity} #{remaining_bottle.container} of beer on the wall.\n"
  end

  def bottle_number(number)
    BottleNumber.new(number)
  end
end
