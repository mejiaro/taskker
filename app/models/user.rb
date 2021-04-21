class User < ApplicationRecord
  authenticates_with_sorcery!
  validates :password, length: { minimum: 6 }
  validates :password, confirmation: true
  validates :email, uniqueness: true
end
