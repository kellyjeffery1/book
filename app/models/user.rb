class User < ApplicationRecord
  has_many :books
  validates :name, uniqueness: true
  validates :password, uniqueness: true
  validates :email, presence: true, format: { with: /\A.*@.*\.com\z/ }
end
