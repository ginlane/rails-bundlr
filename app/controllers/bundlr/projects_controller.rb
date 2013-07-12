require_dependency "bundlr/application_controller"

module Bundlr
  class ProjectsController < ApplicationController

  	def index
  		@myprojects = current_user.projects
  		@allprojects = Project.all
  		@project = Project.new 
  	end

    def create
    	@project = Project.new(params[:project])
    	if @project.save
        	flash[:success] = "Welcome to the Sample App"
        	redirect_to home_path
    	end
    end

  end
end