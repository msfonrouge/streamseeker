class MoviesController < ApplicationController

  before_action :set_movies, only: [:show]

  def index
    @movies = Movie.all
    @movies = @movie.search_movie(params[:query]) if params[:query].present?
  end

  def show
    @review = Review.new
    @rating = Rating.new
  end

  private

  def set_movies
    @movie = Movie.find(params[:id])
  end
end
