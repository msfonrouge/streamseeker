class WatchlistsController < ApplicationController
  before_action :set_user, only: [:index, :new, :edit, :index]

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
    # @watchlist.marker = Marker.new()
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

  #PATCH restaurant update
  def update
    @watchlist = Watchlist.find(params[:id])
    @watchlist.update(watchlist_params)
    if @watchlist.save
      redirect_to watchlist_path(@wathclist.id),
                  notice: "La Watchlist se ha actualizado correctamente"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @watchlist = Wathclist.find(params[:id])
    @watchlist.destroy
    redirect_to watchlist_path, status: :see_other
  end

  private

  def watchlist_params
    params.require(:watchlist).permit(:title)
  end

  def set_user
    @user = current_user if current_user
  end
end
