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
    "#{quantity(number).capitalize} #{container(number)} of beer on the wall, #{quantity(number)} #{container(number)} of beer.\n" +
    "#{action(number)}, #{quantity(number - 1)} #{container(number-1)} of beer on the wall.\n"
  end

  private

  def action(number)
    return 'Go to the store and buy some more' if number.zero?
    return 'Take it down and pass it around' if number == 1

    'Take one down and pass it around'
  end

  def quantity(number)
    return 'no more' if number.zero?
    return '99' if number.negative?

    number.to_s
  end

  def container(number)
    return 'bottle' if number == 1

    'bottles'
  end
end
