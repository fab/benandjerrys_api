class FlavorsController < ApplicationController
  def index
    @flavors = Flavor.all

    render json: @flavors.to_json(only: [:id, :name])
  end

  def show
    @flavor = Flavor.find(params[:id])

    render json: @flavor.to_json(only: [:id, :name, :img_url])
  end
end
