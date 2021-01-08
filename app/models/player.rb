class Player < ApplicationRecord
  has_and_belongs_to_many :matches
  has_many :games, through: :matches

  validates :name, uniqueness: true
  validates :name, presence: true

  has_secure_password

  scope :order_by_name, -> { order(name: :asc)}

  def wins
    Match.where(winner: self.name).count
  end

  def losses
    wins = Match.where(winner: self.name).count
    total_matches = self.matches.count
    losses = total_matches - wins
    losses
  end

end
