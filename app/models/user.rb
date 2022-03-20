class User < ApplicationRecord
  has_one_attached :photo
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true

  has_many :recipes
end
