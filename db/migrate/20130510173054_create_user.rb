class CreateUser < ActiveRecord::Migration
  def change
		create_table :users do |t|
			t.string :name
			t.integer :team_membership_id
			t.timestamps
		end
  end
end
