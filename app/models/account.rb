class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  #Association
  has_one :user

  #Validation
  validates :email ,presence:true , uniqueness: true
  validates :password , presence: true
  validates :username, presence: true
end
