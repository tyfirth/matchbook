class Player < ApplicationRecord
  has_and_belongs_to_many :matches
  has_many :games, through: :matches

  validates :name, uniqueness: true

  def self.wins
    #returns count of number of matches with wins
    #self.matches.where(winner: self)
  end

  def self.losses
    #returns count of all matches that are not wins (self.matches.count - self.wins)
  end

end
