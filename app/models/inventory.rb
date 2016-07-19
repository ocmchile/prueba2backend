class Inventory < ActiveRecord::Base
  belongs_to :category
  belongs_to :work, dependent: :destroy
  validates :numserie, presence: true
  validates :tamrueda, numericality: {greater_than: 0}
  validates_uniqueness_of :numserie

  scope :tamaniox, ->(x){where("tamrueda = ?", x)}

  after_destroy :save_log

  def save_log
  	Registro.create(desc: "La pieza con serial (" + self.numserie + ") ha sido borrada")
  end
end
