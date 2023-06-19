class MoviesController < ApplicationController

  before_action :set_movies, only: [:show]
  before_action :set_user, only: [:show, :index]
  def index
    @movies = Movie.all
    @movies = @movie.search_movie(params[:query]) if params[:query].present?
  end

  def show
    @movie = Movie.find(params[:id])
    @review = Review.new
  end

  def rating

  end

  private

  def set_movies
    @movie = Movie.find(params[:id])
  end

  def set_user
    @user = current_user if current_user
  end
end
