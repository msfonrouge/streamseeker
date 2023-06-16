class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home index]

  def home
    @user = current_user
    @movies = Movie.order("RANDOM()").limit(10)
    @genres = Movie.distinct.pluck(:genre)
  end
end
