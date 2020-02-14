class User < ApplicationRecord
  has_many :pages
  validates :name, uniqueness: true
  validates :password, uniqueness: true
  validates :email, presence: true, format: { with: /\A.*@.*\.com\z/ }
end
