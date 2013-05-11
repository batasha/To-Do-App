class TeamsController < ApplicationController
	def index
		@teams = Team.all
	end

	def show
		@team = Team.find(params[:id])
	end

	def new
		@team = Team.new
		render :form
	end

	def create
		@team = Team.new(params[:team])

		if @team.save
			redirect_to team_url(@team)
		else
			render :form
		end
	end

	def edit
		@team = Team.find(params[:id])
		render :form
	end

	def update
		@team = Team.find(params[:id])

		if @team.update_attributes(params[:team])
			redirect_to team_url(@team)
		else
			render :form
		end
	end
end