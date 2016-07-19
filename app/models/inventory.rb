class Inventory < ActiveRecord::Base
  belongs_to :category
  belongs_to :work, dependent: :destroy
  validates :numserie, presence: true
  validates :tamrueda, numericality: {greater_than: 0}
  validates_uniqueness_of :numserie

  scope :tamaniox, ->(x){where("tamrueda = ?", x)}
end
