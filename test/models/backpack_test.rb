require "test_helper"

class BackpackTest < ActiveSupport::TestCase
  test "has initial contents" do
    backpack = Backpack.new({"1" => 1})

    assert_equal ({"1" => 1}), backpack.contents
  end

  test "can add a pokemon" do
    backpack = Backpack.new({"1" => 1})

    backpack.add_pokemon(1)
    backpack.add_pokemon(2)

    assert_equal ({ "1" => 2, "2" => 1}), backpack.contents
  end

  test "return the total number of items in backpack" do
    backpack = Backpack.new({"1" => 3, "2" => 1, "3" => 3})

    assert_equal 7, backpack.total
  end

  test "returns total number of a specific pokemon in our backpack" do
    backpack = Backpack.new({"1" => 3, "2" => 1, "3" => 3})

    assert_equal 3, backpack.count_of(3)
  end
end
