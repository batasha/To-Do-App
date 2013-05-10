class Project < ActiveRecord::Base
	attr_accessible :title, :description

	has_many :items

	validates :title, :presence => true
end