class Work < ActiveRecord::Base
  belongs_to :user
  has_one :inventory
end
