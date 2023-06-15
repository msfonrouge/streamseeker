class RatingsController < ApplicationController
  before_action :set_ratings, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:index, :new, :create, :show, :edit]

  def index
    @ratings = Rating.all
  end

  def show
    @rating = Rating.find(params[:id])
  end

  def new
    @rating = Rating.new
    @movie = Movie.find(params[:movie_id])
  end

  def create
    @rating = Rating.new(rating_params)
    @movie = Movie.find(params[:movie_id])
    @rating.movie_id = @movie.id
    @rating.user_id = @user.id
    @movie.status = true
    if @rating.save && @movie.save
      redirect_to rating_path(@rating.id, movie_id: @movie.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @rating.update(rating_params)
      redirect_to rating_path(@rating.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @rating.destroy
    redirect_to ratings_path, status: :see_other
  end

  private

  def set_bookings
    @rating = Rating.find(params[:id])
  end

  def rating_params
    params.require(:rating).permit(:start_date, :end_date, :status, :yacht_id, :user_id)
  end

  def set_user
    @user = current_user
  end
end
