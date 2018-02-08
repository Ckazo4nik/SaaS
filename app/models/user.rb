class User < ApplicationRecord
  before_validation :set_admin
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def set_admin
    self.admin = true if User.all == []
  end
end
