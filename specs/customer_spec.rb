require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Bob", 50, 21, 50)
    @drink_name = Drink.new("Mango", 20, 30)
  end

  def test_customer_has_name
    assert_equal("Bob", @customer.name)
  end

  def test_money_in_wallet
    count = @customer.wallet
    assert_equal(50, count)
  end

  def test_drink_in_hands
    count = @customer.hands_count
    assert_equal(0, count)
  end

  def test_customer_can_get_drink
    drink_name = Drink.new("Mango", 20, 30)
    @customer.has_drink(drink_name)
    assert_equal(1, @customer.hands_count)
  end

  # def test_customer_can_afford_drink
  #     drink_name = Drink.new("Mango", 20)
  #   customer = @customer.customer_can_afford_drink
  #   assert_equal(30, @customer.wallet)

    # def test_money_in_wallet_sufficient
    #   number = @customer.customer_can_afford_drink(@drink_name)
    #   assert_equal(30, number)
    # end

def test_money_for_drink_sufficient
  boolean = @customer.customer_can_afford_drink(@drink_name)
  assert_equal(true, boolean)
end


def test_pay_for_drink
  number = @customer.pay_for_drink(@drink_name)
  assert_equal(30, number)
end

def test_customer_has_age
  assert_equal(21, @customer.age)
end

def test_drunkenness_level
  assert_equal(50, @customer.drunkenness)
end


def test_increase_in_drunkenness
  drink = Drink.new("Mango", 20, 30)
  result = @customer.increase_drunkenness(drink)
  assert_equal("No more mangos for you!", result)
end

end
