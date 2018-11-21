class Pub

  attr_reader :name, :till

    def initialize(name, till, drinks)
      @name = name
      @till = till
      @drinks = drinks
  end

    def find_drink_by_name(name)
      for drink in @drinks
        if (drink.name == name)
        return drink
      end
    end
    return nil
  end

  def sell_drink(drink_to_sell)
    for drink in @drinks
      if drink_to_sell == drink
        @till += drink.price
      end
    end
  end

  def check_customer_is_old_enough(customer)
    if customer.age >= 18
      return true
    else
      return false
    end
  end


def customer_is_drunk(customer)
  if customer.drunkenness <= 150
    return "Would you like a drink?"
  else
    return "Piss off!  You smell of mango!"
  end
end

end
