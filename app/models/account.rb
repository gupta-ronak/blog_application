class Account < ApplicationRecord

  #Association
  has_one :user

  #Validation
  validates :email ,presence:true , uniqueness: true
  validates :password , presence: true
  validates :username, presence: true, uniqueness: true
end
