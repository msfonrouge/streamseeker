class Movie < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_all,
  against: %i[title platform],
  using: {
    tsearch: { prefix: true }
  }

  has_one_attached :photo
  has_many :reviews, dependent: :destroy
  has_many :markers, dependent: :destroy
  has_many :watchlists, through: :markers, dependent: :destroy
  acts_as_favoritable

  validates :title, :year, :platform, presence: true
  validates :title, uniqueness: { scope: [:year, :length] }
end
