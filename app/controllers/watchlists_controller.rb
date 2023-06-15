class WatchlistsController < ApplicationController
end

def index
  @watchlists = Watchlist.all
end

def show
  @watchlist = Watchlist.find(params[:id])
end

def create
  @watchlist = Wachlist.new(watchlist_params)
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

  private

  def watchlist_params
    params.require(:watchlist).permit(:title)
  end
end
