class Movie < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_all,
  against: %i[title description year length genre platform],
  using: {
    tsearch: { prefix: true }
  }

  has_one_attached :photo
  has_many :reviews, dependent: :destroy
  has_many :markers, dependent: :destroy
  has_many :watchlists, through: :markers, dependent: :destroy
end
