class StoresController < ApplicationController
  def index
    @stores = Store.all

    render json: @stores, each_serializer: CompactStoreSerializer
  end

  def show
    @store = Store.find(params[:id])

    render json: @store
  end
end
