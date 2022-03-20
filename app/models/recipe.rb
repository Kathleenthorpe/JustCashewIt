class Recipe < ApplicationRecord
  has_many_attached :photos
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
end
