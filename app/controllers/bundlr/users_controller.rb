require_dependency "bundlr/application_controller"

module Bundlr
  class UsersController < ApplicationController
    before_filter :signed_in_user, only: [:edit, :update]
    before_filter :correct_user, only: [:edit, :update]

  	def show
  		@user = User.find(current_user.id)
  	end

    def new
    	@user = User.new
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])
      if @user.update_attributes(params[:user])
        flash[:success] = "User Updated"
        sign_in @user
        redirect_to @user
      else
        render 'edit'
      end
    end

    def create
    	@user = User.new(params[:user])
    	if @user.save
    		sign_in @user
        flash[:success] = "Welcome to the Sample App"
    		redirect_to @user
    	else
    		render 'new'
    	end
    end

      private

        def signed_in_user
          unless signed_in?
            store_location
            redirect_to signin_url, notice: "Please Sign In"
          end
        end

        def correct_user
          @user = User.find(params[:id])
          redirect_to(root_path) unless current_user?(@user)
        end
    
  end
end

 Mess+Noise, All I Do is Listen, Pedestrian.TV, Line of Best Fit & FBi's blog