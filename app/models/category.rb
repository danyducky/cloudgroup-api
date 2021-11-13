class Category < ApplicationRecord
  has_many :catalogs
  has_many :tasks, through: :catalogs

  validates :title, presence: true
end
