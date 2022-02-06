class Goal < ApplicationRecord
  has_one_attached :image
  
  belongs_to :user
  has_many :steps
  
  validates :title, presence: true
end
