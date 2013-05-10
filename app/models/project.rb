class Project < ActiveRecord::Base
	attr_accessible :title, :description, :team_id

	has_many :items
	belongs_to :team

	validates :title, :presence => true
end