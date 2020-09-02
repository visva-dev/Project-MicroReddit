class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :email, :name, uniqueness: true
  validates :email, :name, presence: true
  validates :name, length: { minimum: 4 }
end
