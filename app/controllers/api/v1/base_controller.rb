class Api::V1::BaseController < ApplicationController
	protect_from_forgery with: :null_session

	before_action :destroy_session
    before_action :set_default_format
	def destroy_session
      request.session_options[:skip] = true
	end	
	
	def set_default_format
      request.format = :json
	end	
end
