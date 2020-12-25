class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  #devise :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :validatable

  has_many :players

  validates_presence_of :username
  validates_uniqueness_of :username

  has_secure_password

  accepts_nested_attributes_for :players

  def players_attributes=(players_attributes)
    players_attributes.values.each do |player_attributes|
      self.players.build(player_attributes)
    end
  end

end
