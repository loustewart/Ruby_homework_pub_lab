require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

  class PubTest < MiniTest::Test

    def setup
      @drink1 = Drink.new("Fizzy", 15, 30)
      @drink2 = Drink.new("Mango", 20, 30)
      @drink3 = Drink.new("Still", 13, 20)

      drinks = [@drink1, @drink2, @drink3]

      @pub = Pub.new("Top Water", 100, drinks)

    end


  def test_pub_has_name
    assert_equal("Top Water", @pub.name)
  end

  def test_till_has_money
    assert_equal(100, @pub.till)
  end

  def test_find_drink_by_name_found
    drink = @pub.find_drink_by_name("Mango")
    assert_equal("Mango", drink.name)
  end

  def test_find_drink_by_name_not_found
    drink = @pub.find_drink_by_name("Kiwi")
    assert_nil(drink)
  end

  def test_get_money_for_drink
    @pub.sell_drink(@drink2)
    assert_equal(120, @pub.till)
  end

  def test_customer_is_old_enough_true
    customer = Customer.new("Kevin", 100, 22, 20)
    result = @pub.check_customer_is_old_enough(customer)
    assert_equal(true, result)
  end


  def test_customer_is_old_enough_false
    customer = Customer.new("Jenny", 20, 16, 0)
    result = @pub.check_customer_is_old_enough(customer)
    assert_equal(false, result)
  end



  def test_customer_is_too_drunk_false
    customer = Customer.new("Kevin", 100, 22, 100)
    result = @pub.customer_is_drunk(customer)
    assert_equal("Would you like a drink?", result)
  end

  def test_customer_is_too_drunk_true
    customer = Customer.new("Kevin", 100, 22, 200)
    result = @pub.customer_is_drunk(customer)
    assert_equal("Piss off!  You smell of mango!", result)
  end

  end
