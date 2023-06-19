class MarkersController < ApplicationController
  before_action :set_user, only: [:index, :new, :create]

  def index
    @markers = Marker.all
  end

  def new
    @marker = Marker.new
  end

  def create
    @watchlist = Watchlist.find(params[:watchlist_id])
    @marker = Marker.new(marker_params)
    @marker.movie = params[:marker][:movie_id]
    # @review.movie = @movie
    # @review.user = current_user
    # @review.rate = params[:review][:rate].size - 1 if params[:review][:rate].present?
    # if @review.save
    #   redirect_to movie_path(@movie)
    # else
    #   render "movies/show", status: :unprocessable_entity
    # end

  end

  private

  def marker_params
    params.require(:marker).permit(:seen)
  end

  def set_user
    @user = current_user if current_user
  end
end
