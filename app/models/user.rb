class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, presence: true, uniqueness: true, length: { in: 5..12 }
  validates :password, presence: true, length: { in: 5..12 }
end
