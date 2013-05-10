class TeamMembership < ActiveRecord::Base
	attr_accessible :team_id, :user_id

	belongs_to :team
	belongs_to :user

	validates :team_id, :user_id, :presence => true
end