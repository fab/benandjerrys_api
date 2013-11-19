class StoresController < ApplicationController
  def index
    @stores = Store.where('name like ?', "%#{params[:name].try(:upcase)}%")
                   .where('city like ?', "%#{params[:city].try(:upcase)}%")
                   .where('state like ?', "%#{params[:state].try(:upcase)}%")
                   .where('zipcode like ?', "%#{params[:zipcode]}%")

    render json: @stores, each_serializer: CompactStoreSerializer
  end

  def show
    @store = Store.find(params[:id])

    render json: @store
  end
end
