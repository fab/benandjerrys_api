class ApplicationController < ActionController::API
  def default_serializer_options
    {
      root: false
    }
  end

  #Handle RecordNotFound errors
  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: {errors: [exception.message]}, status: :unprocessable_entity
  end
end
