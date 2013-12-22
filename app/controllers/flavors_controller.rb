class FlavorsController < ApplicationController
  def index
    @flavors = Flavor.all.order(:name)

    render json: @flavors, each_serializer: CompactFlavorSerializer
  end

  def show
    @flavor = Flavor.find(params[:id])

    render json: @flavor
  end
end
