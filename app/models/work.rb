class Work < ActiveRecord::Base
  belongs_to :user
  has_one :inventory

  scope :last_5, ->{order('created_at DESC').limit(5)}
  # scope :notitem, ->{ where(:work_id => nil) }
  
  # scope :notitem, -> { includes(:inventory).where('work_id' => nil) }

  # scope :without_pets, lambda { includes(:pets).where('pets.id' => nil) }
  # scope :without_pets, joins(:pets).where("pets.person_id != persons.id")

  scope :notitem, ->{joins(:inventory)}
  # Work.joins(:inventory).uniq.where("inventories.work_id is null")
end
