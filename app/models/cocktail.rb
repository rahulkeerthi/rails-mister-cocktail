class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  CATEGORY = %w[stirred sour highball fizz].freeze
  validates :name, presence: true, uniqueness: true
  validates :category, presence: true, inclusion: { in: CATEGORY }
  validates :description, presence: true
end
