class Dish < ApplicationRecord
  has_and_belongs_to_many :menus
  has_and_belongs_to_many :orders
  belongs_to :type
  mount_uploader :image, ImageUploader
  validates_presence_of :name
  validates_presence_of :price
  scope :first_dishes, ->(menu) { menu.dishes.where(type_id: 1) }
  scope :main_dishes,  ->(menu) { menu.dishes.where(type_id: 2) }
  scope :drink,        ->(menu) { menu.dishes.where(type_id: 3) }

end
