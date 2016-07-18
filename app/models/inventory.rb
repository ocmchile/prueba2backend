class Inventory < ActiveRecord::Base
  belongs_to :category
  validates :numserie, presence: true
  validates :tamrueda, numericality: {greater_than: 0}
  validates_uniqueness_of :numserie
end
