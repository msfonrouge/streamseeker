class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  validates :rate, inclusion: { in: 1..5 }
end
