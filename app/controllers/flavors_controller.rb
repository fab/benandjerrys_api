class FlavorsController < ApplicationController
  def index
    @flavors = Flavor.all

    render json: @flavors, each_serializer: CompactFlavorSerializer
  end

  def show
    @flavor = Flavor.find(params[:id])

    render json: @flavor
  end
end
