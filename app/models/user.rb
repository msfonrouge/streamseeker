class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :ratings
  has_many :reviews
  has_many :movies, through: :ratings
  has_many :movies, through: :reviews
  has_many :watchlists, dependent: :destroy
  has_many :markers, through: :watchlists, dependent: :destroy
end
