class Task < ApplicationRecord
  has_many :catalogs
  has_many :categories, through: :catalogs

  validates :text, presence: true
  
  scope :order_by_id , -> () { order(:id) }
end
