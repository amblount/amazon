class Product < ActiveRecord::Base
  validates :name, :price, :description, :image, presence: true
  validates :name, uniqueness: true

  has_and_belongs_to_many :categories
end
