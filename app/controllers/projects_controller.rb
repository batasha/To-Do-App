class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
	end

	def new
		@project = Project.new(:team_id => params[:team_id])
		render :form
	end

	def create
		@project = Project.new(params[:project])

		if @project.save
			redirect_to project_url(@project)
		else
			render :form
		end
	end

	def edit
		@project = Project.find(params[:id])
		render :form
	end

	def update
		@project = Project.find(params[:id])

		if @project.update_attributes(params[:project])
			redirect_to project_url(@project)
		else
			render :form
		end
	end
end