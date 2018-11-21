require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

  class DrinkTest < MiniTest::Test

    def setup
      @drink = Drink.new("Water", 13, 30)
    end

    def test_drink_has_name
      assert_equal("Water", @drink.name)
    end

    def test_drink_has_price
      assert_equal(13, @drink.price)
    end

  end
