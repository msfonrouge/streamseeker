class Movie < ApplicationRecord
  include PgSearch::Model
  multisearchable against: %i[title description year length genre platform]

  has_one_attached :photo
  has_many :ratings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :users, through: :ratings
  has_many :markers, dependent: :destroy
  has_many :watchlists, through: :markers, dependent: :destroy
end
