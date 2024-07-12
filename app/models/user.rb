class User < ApplicationRecord
  has_many :comments
  has_many :prototypes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :email,              presence: true
  validates :encrypted_password, presence: true
  validates :name,               presence: true
  validates :profile,             presence: true
  validates :occupation,         presence: true
  validates :position,           presence: true

end 
