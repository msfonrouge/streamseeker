class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :ratings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :watchlists, dependent: :destroy
  has_many :markers, through: :watchlists, dependent: :destroy
end
