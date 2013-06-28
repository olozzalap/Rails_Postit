class User < ActiveRecord::Base
  has_many :posts
  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :comments
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create
end