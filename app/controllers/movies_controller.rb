class MoviesController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite

  before_action :set_movies, only: [:show, :toggle_favorite]
  before_action :set_user, only: [:show, :index, :toggle_favorite]
  def index

    if params[:query].present?
      @movies = Movie.search_all(params[:query])
    else
      @movies = Movie.all
    end
    # redirect_to movies_path(query: params[:query])
    respond_to do |format|
      format.html
      format.text { render partial: "shared/list", locals: { movies: @movies }, formats: [:html] }
    end
  end

  def show
    @review = Review.new
  end

  def toggle_favorite
    @user.favorited?(@movie)  ? @user.unfavorite(@movie) : @user.favorite(@movie)
  end

  private

  def set_movies
    @movie = Movie.find(params[:id])
  end

  def set_user
    @user = current_user if current_user
  end
end
