class Customer

  attr_reader :name, :wallet, :age, :drunkenness

  def initialize(name, wallet, age, drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @hands = []
    @drunkenness = drunkenness
  end

  def wallet_count
    return @customer.wallet
  end

  def hands_count
    return @hands.size
  end

  def has_drink(drink_to_be_drunk)
    @hands << drink_to_be_drunk
  end





  # def customer_can_afford_drink(drink)
  #   if @wallet >= drink.price
  #     return @wallet - drink.price
  #   else "You can't afford this"
  #   end
  # end


def customer_can_afford_drink(drink)
  if @wallet >= drink.price
    return true
  else
    return false
  end
end

def pay_for_drink(drink)
  return @wallet -= drink.price
end


def customer_age
    return @customer.age
end

def drunkenness_level
  return @customer.drunkenness
end

def increase_drunkenness(drink)
  drunkenness = 0
  limit = 150

  while (drunkenness < limit)
    drunkenness += drink.alcohol_level
  end
    return "No more mangos for you!"
  end

end
