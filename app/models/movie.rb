class Movie < ApplicationRecord
  include PgSearch::Model
  multisearchable against: %i[title description year length genre platform]

  has_one_attached :photo
end
