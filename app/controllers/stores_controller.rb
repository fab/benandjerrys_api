class StoresController < ApplicationController
  def index
    @stores = Store.where('stores.name like ?', "%#{params[:name].try(:upcase)}%")
                   .where('stores.city like ?', "%#{params[:city].try(:upcase)}%")
                   .where('stores.state like ?', "%#{params[:state].try(:upcase)}%")
                   .where('stores.zipcode like ?', "%#{params[:zipcode]}%")
                   .includes(:flavors)
                   .where('flavors.name like ?', "%#{params[:flavor].try(:upcase)}%")

    render json: { count: @stores.count } and return if params[:count]

    render json: @stores, each_serializer: CompactStoreSerializer
  end

  def show
    @store = Store.find(params[:id])

    render json: @store
  end

  def count_by_state
    @result = Store.order(:state).group(:state).count

    render json: @result
  end
end
