class NoBottle < BottleNumber
  def action
    "Go to the store and buy some more"
  end

  def quantity
    "no more"
  end

  def successor
    BottleNumber.for(99)
  end
end
