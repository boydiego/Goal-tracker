class Goal < ApplicationRecord
  validates :title, presence: true

  has_one_attached :image

end