class Lyrics < ActiveRecord::Migration[5.0]
  def change
  		create_table :lyrics do |table|
  		table.string :artist
  		table.string :song
  		table.string :genre
  		table.string :year
  		table.string :image
  		table.integer :user_id
  		add_foreign_key :accounts, :id
  		end 
  end
end
