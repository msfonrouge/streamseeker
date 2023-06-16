class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home index]

  def home
    @user = current_user
    @movies = Movie.order("RANDOM()").limit(10)
    @genres = Movie.distinct.pluck(:genre)

    if params[:query]
      @movie_search = Movie.global_search(params[:query])
    else
      @movie_search = Movie.all
    end
    respond_to do |format|
      format.html
      format.json { render json: { movies_search: @movies_search } }
    end
  end
end
