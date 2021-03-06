class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
		render :form
	end

	def create
		@user = User.new(params[:user])

		if @user.save
			redirect_to user_url(@user)
		else
			render :form
		end
	end

	def edit
		@user = User.find(params[:id])
		render :form
	end

	def update
		@user = User.find(params[:id])

		if @user.update_attributes(params[:user])
			redirect_to user_url(@user)
		else
			render :form
		end
	end
end