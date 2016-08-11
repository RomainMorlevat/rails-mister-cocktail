class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail_id,
            uniqueness: { scope: :ingredient_id,
                          message: "This cocktail already has a dose with this
                          ingredient" }

  belongs_to :cocktail
  belongs_to :ingredient
end
