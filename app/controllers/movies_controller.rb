class MoviesController < ApplicationController

  before_action :set_movies, only: [:show]
  before_action :set_user, only: [:show, :index]
  def index

    if params[:query].present?
      @movies = Movie.search_all(params[:query])
      respond_to do |format|
        format.html
        format.text { render partial: "shared/list", locals: { movies: @movies }, formats: [:html] }
      end
    elsif params[:año].present? || params[:genero].present? || params[:plataforma].present?
      filtro
    else
      @movies = Movie.all
    end
    # redirect_to movies_path(query: params[:query])
    # respond_to do |format|
    #   format.html
    #   format.text { render partial: "shared/list", locals: { movies: @movies }, formats: [:html] }
    # end

    # @movies = Movie.where(year: params[:año]) if params[:año].present?
  end

  def show
    @movie = Movie.find(params[:id])
    @review = Review.new
  end

  def filtro
    a = params[:año].present?
    g = params[:genero].present?
    pl = params[:plataforma].present?
    if !a && !g && pl
      @movies = Movie.where(platform: params[:plataforma])
    elsif !a && g && !pl
      @movies = Movie.where(genre: params[:genero])
    elsif !a && g && pl
      @movies = Movie.where(genre: params[:genero]).where(platform: params[:plataforma])
    elsif a && !g && !pl
      @movies = Movie.where(year: params[:año])
    elsif a && !g && pl
      @movies = Movie.where(year: params[:año]).where(platform: params[:plataforma])
    elsif a && g && !pl
      @movies = Movie.where(year: params[:año]).where(genre: params[:genero])
    elsif a && g && pl
      @movies = Movie.where(year: params[:año]).where(genre: params[:genero]).where(platform: params[:plataforma])
    end
  end

  private

  def set_movies
    @movie = Movie.find(params[:id])
  end

  def set_user
    @user = current_user if current_user
  end
end
