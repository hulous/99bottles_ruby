class SixPack < BottleNumber
  def quantity
    "1"
  end

  def container
    "six-pack"
  end

  def successor
    BottleNumber.for(5)
  end
end
