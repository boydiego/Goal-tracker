class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { width: /\A[^@\s]+@[^@\s]+\z/, message: "Must be a valid Email address." }
  validates :name, presence: true
end
