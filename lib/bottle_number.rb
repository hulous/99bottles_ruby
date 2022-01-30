class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def action
    return "Go to the store and buy some more" if number.zero?

    "Take #{pronoun} down and pass it around"
  end

  def pronoun
    return "it" if number == 1

    "one"
  end

  def quantity
    return "no more" if number.zero?
    return "99" if number.negative?

    number.to_s
  end

  def container
    return "bottle" if number == 1

    "bottles"
  end

  def successor
    return 99 if number.zero?

    number - 1
  end
end
