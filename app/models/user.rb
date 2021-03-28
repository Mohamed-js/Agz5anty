class User < ApplicationRecord
  has_many :carts
  has_many :orders, class_name: "Order", foreign_key: "user_id"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
