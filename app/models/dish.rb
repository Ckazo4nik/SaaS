class Dish < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :price
end