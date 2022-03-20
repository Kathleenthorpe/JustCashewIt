class Recipe < ApplicationRecord
  has_many :favourites, dependant: :destroy
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
end
