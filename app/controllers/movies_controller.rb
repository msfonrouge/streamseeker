class MoviesController < ApplicationController

  before_action :set_movies, only: [:show]
  before_action :set_user, only: [:show, :index]
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
    @movie = Movie.find(params[:id])
    @review = Review.new
  end

  private

  def set_movies
    @movie = Movie.find(params[:id])
  end

  def set_user
    @user = current_user if current_user
  end
end
