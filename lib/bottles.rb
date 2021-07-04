class Bottles
  def verse(number_of_bottles = 0)
    build_verse(number_of_bottles)
  end

  def verses(bottle_start = 99, bottle_end = 0)
    numbers_of_bottles = (bottle_end.to_i..bottle_start.to_i).to_a.reverse
    verses = []

    numbers_of_bottles.each { |number_of_bottles|
      verses << verse(number_of_bottles).to_s
    }

    verses.join(separator)
  end

  def song
    verses
  end

  private

  def build_verse(number_of_bottles)
    first_part_of_the_verse_text(number_of_bottles) +
      second_part_of_the_verse_text(number_of_bottles - 1)
  end

  def first_part_of_the_verse_text(number_of_bottles)
    number_or_no_more = number_of_bottles_or_no_more(number_of_bottles)
    bottle_or_bottles = bottle_or_bottles(number_of_bottles)

    "#{number_or_no_more.is_a?(String) ? number_or_no_more.capitalize : number_or_no_more} #{bottle_or_bottles} of beer on the wall, " \
      "#{number_or_no_more} #{bottle_or_bottles} of beer.#{separator}"
  end

  def second_part_of_the_verse_text(number_of_bottles_minus_one)
    return no_more_bottle if number_of_bottles_minus_one.zero?
    return go_to_the_store if number_of_bottles_minus_one.negative?

    bottle_or_bottles = bottle_or_bottles(number_of_bottles_minus_one)

    'Take one down and pass it around, ' \
      "#{number_of_bottles_minus_one} #{bottle_or_bottles} of beer on the wall.#{separator}"
  end

  def no_more_bottle
    "Take it down and pass it around, no more bottles of beer on the wall.#{separator}"
  end

  def go_to_the_store
    "Go to the store and buy some more, 99 bottles of beer on the wall.#{separator}"
  end

  def number_of_bottles_or_no_more(number)
    return 'no more' if number.zero?

    number
  end

  def bottle_or_bottles(number_of_bottles)
    return 'bottle' if number_of_bottles == 1

    'bottles'
  end

  def separator
    "\n"
  end
end
