class MoviesController < ApplicationController

  before_action :set_movies, only: [:show]

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
end
