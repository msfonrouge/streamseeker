class Watchlist < ApplicationRecord
  belongs_to :user
  has_many :markers, dependent: :destroy
  has_many :movies, through: :markers

  validates :title, presence: true
end
