class ProjectsController < ApplicationController
    before_action :logged_in_user, only: [:new]
  
    def new
      Experience.find_by_id(params[:id].to_i).projects.create
      flash[:success] = "Project added."
      redirect_to edit_url
    end
  
  end