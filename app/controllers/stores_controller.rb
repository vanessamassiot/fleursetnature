class StoresController < ApplicationController

  def index
    @stores = Stores.all
  end

  def show
    @store = Store.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])
    @store.update(store_params)
    redirect_to store_path(@store)
  end

  private

  def store_params
    params.require(:store).permit(:stars)
  end

end
