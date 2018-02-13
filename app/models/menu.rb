class Menu < ApplicationRecord
  has_and_belongs_to_many :dishes
  has_many :orders


end
