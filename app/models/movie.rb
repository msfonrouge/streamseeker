class Movie < ApplicationRecord
  has_one_attached :photo
  has_many :ratings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :users, through: :ratings
  has_many :markers, dependent: :destroy
  has_many :watchlists, through: :markers, dependent: :destroy
end
