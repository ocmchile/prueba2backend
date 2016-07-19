require 'test_helper'

class WorkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @work = works(:one) # @item = Item.new(name: "Example Item")
  end

  test "user responsable of work" do
  	responsable = @work.user
  	# puts responsable.name
  	assert responsable.valid?
  end
end
