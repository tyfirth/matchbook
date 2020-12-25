class Player < ApplicationRecord
  has_and_belongs_to_many :matches
  has_many :games, through: :matches

  belongs_to :user

  has_secure_password

  validates :name, presence: true
  validates_uniqueness_of :name
  #validates :password, presence: true

  def wins
    #returns count of number of matches with wins
    #self.matches.where(winner: self)
    Match.where(winner: self.name).count
  end

  def losses
    #returns count of all matches that are not wins (self.matches.count - self.wins)
    wins = Match.where(winner: self.name).count
    total_matches = self.matches.count
    losses = total_matches - wins
    losses
  end


end
