class ItemsController < ApplicationController

	def index
		if params.include?(:project_id)
			@items = Item.where(:project_id => params[:project_id])
		else
			@items = Item.all
		end

		render :index
	end

	def show
		@item = Item.find(params[:id])
	end

	def new
		@item = Item.new(:project_id => params[:project_id])
		render :form
	end

	def create
		@item = Item.new(params[:item])

		if @item.save!
			redirect_to item_url(@item)
		else
			render :form
		end
	end

	def edit
		@item = Item.find(params[:id])
		render :form
	end

	def update
		@item = Item.find(params[:id])

		if @item.update_attributes(params[:item])
			redirect_to project_url(@item.project)
		else
			render :form
		end
	end
end