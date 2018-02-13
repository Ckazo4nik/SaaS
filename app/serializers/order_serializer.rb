class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user, :menu, :price, :dishes
end
