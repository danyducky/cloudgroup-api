class Category < ApplicationRecord
  has_many :catalogs
  has_many :tasks, through: :catalogs

  validates :title, presence: true, uniqueness: true

  scope :order_by_id, -> () { order(:id) }
  scope :order_by_title, -> () { order(:title) }
end
