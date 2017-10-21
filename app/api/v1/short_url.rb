# frozen_string_literal: true

module API
  module V1
    ##
    # This endpoint redirects to the original url of
    # a ShortUrl
    ##
    class ShortUrl < Grape::API
      route_param :short_code do
        get do
          short_url = URLs::Finder.find!(short_code: params[:short_code])
          header('Location', short_url.url)
          status(302)
        end
      end
    end
  end
end
