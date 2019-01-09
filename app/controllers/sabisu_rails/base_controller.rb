module SabisuRails
  class BaseController < ApplicationController

    layout SabisuRails.layout

    before_action :authenticate

    protected

      def authenticate
        authenticate_or_request_with_http_basic do |username, password|
          username == SabisuRails.authentication_username && password == SabisuRails.authentication_password
        end
      end
  end
end
