class Room < ApplicationRecord
  has_many :games
  has_many :players

  def to_param
    unique_code
  end
end
