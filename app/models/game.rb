class Game < ApplicationRecord
  has_many :matches
  has_many :players, through: :matches



end
