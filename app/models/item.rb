class Item < ActiveRecord::Base
	attr_accessible :title, :details, :completed, :project_id

	belongs_to :project

	validates :title, :presence => true
end