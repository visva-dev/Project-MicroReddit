class Author < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :email, :username, uniqueness: true
  validates :email, :username, :password, presence: true
  validates :username, length: { minimum: 4 }
  validates :password, length: { minimum: 6 }
end
