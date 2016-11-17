class Userlyrics < ActiveRecord::Migration[5.0]
  def change
  		create_table :userlyrics do |table|     
      	add_foreign_key :lyrics, :user_id
      	add_foreign_key :lyrics, :id
  		end 
  end
end
