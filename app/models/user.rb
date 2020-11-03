class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :messages
  has_one :profile
  accepts_nested_attributes_for :profile
  has_one :credit_card, dependent: :destroy
  has_one :address
  has_many :users
end
