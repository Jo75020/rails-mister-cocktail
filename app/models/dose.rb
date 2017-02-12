class Dose < ApplicationRecord
  validates :description, :presence => true
  validates :ingredient_id, :presence => true
  belongs_to :cocktail
  belongs_to :ingredient
end
