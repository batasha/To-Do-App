class Item < ActiveRecord::Base
	attr_accessible :title, :description, :completed, :project_id

	belongs_to :project

	validates :title, :presence => true
	validates :completed, :inclusion => {:in => [nil, 1]}
end