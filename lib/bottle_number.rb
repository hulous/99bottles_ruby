class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def action
    return 'Go to the store and buy some more' if number.zero?
    return 'Take it down and pass it around' if number == 1

    'Take one down and pass it around'
  end

  def quantity
    return 'no more' if number.zero?
    return '99' if number.negative?

    number.to_s
  end

  def container
    return 'bottle' if number == 1

    'bottles'
  end
end
