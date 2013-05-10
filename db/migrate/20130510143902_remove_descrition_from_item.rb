class RemoveDescritionFromItem < ActiveRecord::Migration
  def change
		remove_column :items, :description
		add_column :items, :details, :text
  end
end
