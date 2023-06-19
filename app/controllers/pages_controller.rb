class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home index]

  def home
    @user = current_user
    @genres = Movie.distinct.pluck(:genre)

    if params[:query]
      @movies = Movie.search_all(params[:query])
    else
      @movies_random = Movie.order("RANDOM()").limit(10)
      @movies = []
    end
    respond_to do |format|
      format.html
      # format.json { render json: { movies_search: @movies_search } }
      # no quiero el JSON
      format.text { render partial: "shared/list", locals: { movies: @movies }, formats: [:html] }
    end
  end

  # def match
  #   @result = Movie.search_all(params[:query]).limit(6)
  # end
end
