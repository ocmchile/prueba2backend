require 'test_helper'

class InventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @inventory = inventories(:one) # @item = Item.new(name: "Example Item")
  end

  test "verify numserie is unique" do
  	duplicate_numserie = @inventory.dup
    assert_not duplicate_numserie.valid?
  end
end
