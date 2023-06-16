class Movie < ApplicationRecord
  include PgSearch::Model
  multisearchable against: %i[title description year length genre platform]

  has_one_attached :photo
  has_many :reviews, dependent: :destroy
  has_many :markers, dependent: :destroy
  has_many :watchlists, through: :markers, dependent: :destroy

  def self.global_search(query)
    
  end
end
