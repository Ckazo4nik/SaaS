class User < ApplicationRecord
  before_create -> {self.token = generate_token}
  before_validation :set_admin
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders

  def set_admin
    self.admin = true if User.all == []
  end

  def generate_token
    loop do
      token = SecureRandom.hex
      return token unless User.exists?({token: token})
    end
  end
end
