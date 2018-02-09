class Dish < ApplicationRecord
  has_and_belongs_to_many :menus
  belongs_to :type
  validates_presence_of :name
  validates_presence_of :price
end
