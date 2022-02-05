class User < ApplicationRecord
  has_secure_password

  has_many :goals, dependent: :destroy

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'must be a valid email address' }
  validates :name, presence: true
end
