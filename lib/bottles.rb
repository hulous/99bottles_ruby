require_relative './bottle_number'
require_relative './no_bottle'
require_relative './one_bottle'
require_relative './six_pack'
require_relative './song_verse'

class Bottles
  def song
    verses(99, 0)
  end

  def verses(bottle_start, bottle_end)
    bottle_start.downto(bottle_end).collect { |number_of_bottles| verse(number_of_bottles) }.join("\n")
  end

  def verse(number)
    SongVerse.new(number).lyrics
  end
end
