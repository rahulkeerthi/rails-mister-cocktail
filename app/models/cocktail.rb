class Cocktail < ApplicationRecord
  has_many :doses

  CATEGORY = %w[stirred sour highball fizz]
  validates :name, presence: true, uniqueness: true
  validates :category, presence: true, inclusion: { in: CATEGORY }
  validates :description, presence: true
end
