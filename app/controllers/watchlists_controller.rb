class WatchlistsController < ApplicationController
  before_action :set_user, only: %i[index new edit update unfavorite]

  def index
    @watchlists = @user.watchlists
  end

  def show
    @watchlist = Watchlist.find(params[:id])
    @marker = Marker.new
    @user = current_user
    @markers = @watchlist.markers
  end

  def new
    @watchlist = Watchlist.new
  end

  def create
    @watchlist = Watchlist.new(watchlist_params)
    @watchlist.user = current_user
    if @watchlist.save
      redirect_to watchlists_path,
                  notice: "The watchlist has been created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @watchlist = Watchlist.find(params[:id])
  end

  def update
    @watchlist = Watchlist.find(params[:id])
    @movie = Movie.find(params[:watchlist][:movie_ids][1])
    @watchlist.update(watchlist_params)
    @user.favorite(@movie, scope: @watchlist.title)
    if @watchlist.save
      redirect_to watchlist_path(@watchlist.id),
                  notice: "La Watchlist se ha actualizado correctamente"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @watchlist = Watchlist.find(params[:id])
    @watchlist.destroy
    redirect_to watchlists_path, status: :see_other
  end

  def unfavorite
    movie = Movie.find(params[:id])
    @user.unfavorite(movie)

    #@favorite = Favorite.where(user_id: @user.id, movie_id: movie_id)
    #@favorite.destroy
    #@user.unfavorite(@movie.id)
    redirect_to movies_path, status: :see_other
  end

  private

  def watchlist_params
    params.require(:watchlist).permit(:title)
  end

  def set_user
    @user = current_user if current_user
  end
end
