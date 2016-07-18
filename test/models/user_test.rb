require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = users(:one) # @item = Item.new(name: "Example Item")
  end

  test "name not empty" do
  	@user.name = nil
  	assert_not  @user.valid?
  end
end
