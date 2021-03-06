class Match < ApplicationRecord
  belongs_to :game
  has_and_belongs_to_many :players

  validates :match_datetime, :players, :winner, presence: true

  accepts_nested_attributes_for :players

end
