module Bundlr
  class ApplicationController < ActionController::Base
  	protect_from_forgery
  	include SessionsHelper

  	# Force Signout to prevent CSRF Attacks
  	def handle_unverified_request
  		sign_out
  		super
  	end

  end
end