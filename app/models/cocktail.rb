class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  # cloudinary + attachinary
  has_attachment :photo, accept: [:jpg]
end
