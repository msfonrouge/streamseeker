class Movie < ApplicationRecord
  has_one_attached :photo
  has_many :ratings, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
