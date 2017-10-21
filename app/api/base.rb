# frozen_string_literal: true

require 'grape/active_model_serializers'

module API
  # General configuration
  class Base < Grape::API
    include Grape::ActiveModelSerializers

    prefix :api
    format :json
    use Grape::Middleware::Globals
  end
end
