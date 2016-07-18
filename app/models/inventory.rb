class Inventory < ActiveRecord::Base
  belongs_to :category
  validates :numserie, presence: true
  validates_uniqueness_of :numserie
end
