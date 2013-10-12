class StoresController < ApplicationController
  def index
    @stores = Store.all

    render json: @stores.to_json(only: [:id, :name], methods: :address)
  end

  def show
    @store = Store.find(params[:id])

    render json: @store.to_json(only: [:id, :name],
                                methods: :address,
                                include: {flavors: {only: [:id, :name]}})
  end
end
