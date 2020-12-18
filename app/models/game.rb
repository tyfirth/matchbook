class Game < ApplicationRecord
  has_many :matches
  has_many :players, through: :matches

  accepts_nested_attributes_for :matches

  validates :name, uniqueness: true



end
