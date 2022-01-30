class OneBottle < BottleNumber
  def action
    "Take it down and pass it around"
  end

  def quantity
    number.to_s
  end

  def container
    "bottle"
  end
end
