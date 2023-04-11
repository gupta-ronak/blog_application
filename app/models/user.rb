class User < ApplicationRecord

  #Association
  belongs_to :account
  has_many :articles

  #validation

  validates :name ,presence: true
  validates :age , presence: true
  validates :username, presence: true, uniqueness: true

end
