class Post < ApplicationRecord
  belongs_to :author
  validates :title, uniqueness: true
  validates :title, :body, presence: true
end
